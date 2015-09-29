class AlsoboughtsController < ApplicationController
  before_action :set_alsobought, only: [:show, :edit, :update, :destroy]

  # GET /alsoboughts
  # GET /alsoboughts.json
  def index
    @alsoboughts = Alsobought.all
  end

  # GET /alsoboughts/1
  # GET /alsoboughts/1.json
  def show
  end

  # GET /alsoboughts/new
  def new
    @alsobought = Alsobought.new
  end

  # GET /alsoboughts/1/edit
  def edit
  end

  # POST /alsoboughts
  # POST /alsoboughts.json
  def create
    @alsobought = Alsobought.new(alsobought_params)

    respond_to do |format|
      if @alsobought.save
        format.html { redirect_to @alsobought, notice: 'Alsobought was successfully created.' }
        format.json { render :show, status: :created, location: @alsobought }
      else
        format.html { render :new }
        format.json { render json: @alsobought.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alsoboughts/1
  # PATCH/PUT /alsoboughts/1.json
  def update
    respond_to do |format|
      if @alsobought.update(alsobought_params)
        format.html { redirect_to @alsobought, notice: 'Alsobought was successfully updated.' }
        format.json { render :show, status: :ok, location: @alsobought }
      else
        format.html { render :edit }
        format.json { render json: @alsobought.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alsoboughts/1
  # DELETE /alsoboughts/1.json
  def destroy
    @alsobought.destroy
    respond_to do |format|
      format.html { redirect_to alsoboughts_url, notice: 'Alsobought was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alsobought
      @alsobought = Alsobought.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alsobought_params
      params.require(:alsobought).permit(:product_id)
    end
end
