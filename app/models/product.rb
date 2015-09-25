# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  price       :decimal(, )
#  list_price  :decimal(, )
#  image       :string
#  available   :boolean
#  quantity    :integer
#  postage     :decimal(, )
#  category_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Product < ActiveRecord::Base

	has_many :lineitems
	belongs_to :category

end
