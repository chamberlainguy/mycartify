# == Schema Information
#
# Table name: lineitems
#
#  id         :integer          not null, primary key
#  product_id :integer
#  cart_id    :integer
#  quantity   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Lineitem < ActiveRecord::Base

	belongs_to :cart
	belongs_to :product
	
end
