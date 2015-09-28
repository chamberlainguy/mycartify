# == Schema Information
#
# Table name: buyers
#
#  id              :integer          not null, primary key
#  name            :string
#  email           :string
#  password_digest :string
#  address         :string
#  suburb          :string
#  city            :string
#  state           :string
#  post_code       :string
#  country         :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Buyer < ActiveRecord::Base

	has_secure_password
	
	has_many :carts

    has_many :lineitems, :through => :carts

  	validates :name, :presence => true, :uniqueness => true, :length => { :minimum => 3 }
	validates :email, :presence => true, :uniqueness => true
	validates :address, :presence => true
	validates :city, :presence => true
	validates :state, :presence => true
	validates :post_code, :presence => true
	validates :country, :presence => true

	def cart_total_items
		total = 0
		if lineitems.present?
			lineitems.each do |li|
				total += li.quantity 
			end	
		end
		return total
	end

	def cart_total_amount
		total = 0
		if lineitems.present?
			lineitems.each do |li|
				total += li.product.price * li.quantity
			end
		end
		return total
	end	

end	

