# == Schema Information
#
# Table name: carts
#
#  id         :integer          not null, primary key
#  buyer_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Cart < ActiveRecord::Base

	has_many :lineitems
	belongs_to :buyer

end
