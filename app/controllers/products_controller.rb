class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :addtocart, :edit, :update, :destroy]

  # GET /products
  # GET /products.json
  def index
    if params[:cat_id].present?
      # Read by this category id
      cat = Category.find(params[:cat_id])
      @products = cat.products
      @search_desc = "Showing all " + cat.name
    else
      @products = Product.all
      @search_desc = "Showing all products"
    end
  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  def addtocart
    if @current_buyer.present?
      cart = @current_buyer.cart
      if cart.nil?
        # Create a cart if this buyer doesn't yet have one
        cart = Cart.new  
        cart.buyer = @current_buyer
        cart.save
      end  
      li = Lineitem.new  
      li.cart = cart
      li.product = @product
      li.quantity = 1
      li.save
      redirect_to @product, notice: 'Item added to cart'
    else  
      redirect_to @product, notice: 'First login then you can add to cart.'
    end  
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :description, :price, :list_price, :image, :available, :quantity, :postage, :category_id)
    end

end
