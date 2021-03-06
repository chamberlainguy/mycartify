class ChargesController < ApplicationController

def new
end

def create

	# The following code is not really required in test

	# Amount in cents
	# @amount = @current_buyer.cart_total_amount * 100   # convert to cents

	# customer = Stripe::Customer.create(
	# 	:email => @current_buyer.email,
	# 	:card	 =>	params[:stripeToken]
	# )

	# charge = Stripe::Charge.create(
	# 	:customer 		=> @current_buyer.id,
	# 	:amount 			=> @amount,
	# 	:description	=> 'Rails Stripe Customer',
	# 	:currency			=> 'AUD'
	# )

	# Record the "Also Boughts" eg. He who bought A also bought B
	@current_buyer.lineitems.each do |i|
		p1 = i.product
		@current_buyer.lineitems.each do |j|
			p2 = j.product
			unless p1 == p2	
				# Check if we already have an 'alsobought' recorded
				ab = Alsobought.where(product: p1.id, alsogot: p2.id )
    			if ab.empty?
					Alsobought.create product: p1, alsogot: p2
				end	
			end	
		end
	end	

	# Create the order and orderlines
	o = Order.new
	o.name = @current_buyer.name
	o.email = @current_buyer.email
	o.address = @current_buyer.address
	o.suburb = @current_buyer.suburb
	o.state = @current_buyer.state
	o.post_code = @current_buyer.post_code
	o.country = @current_buyer.country
	o.buyer = @current_buyer
	o.save
	@current_buyer.lineitems.each do |li|
		oi = Orderline.new
		oi.product_name = li.product.name
		oi.quantity = li.quantity
		oi.total_price = li.quantity * li.product.price
		oi.product = li.product
		oi.order = o
		oi.save
	end

	# Now we must get rid of the cart since the payment is done
	@current_buyer.cart.destroy

rescue Stripe::CardError => e
	flash[:error] = e.message
	redirect_to charges_path
end

end
