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

	@current_buyer.cart.destroy

rescue Stripe::CardError => e
	flash[:error] = e.message
	redirect_to charges_path
end

end
