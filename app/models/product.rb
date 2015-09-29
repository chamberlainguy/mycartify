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

	has_many :relations_to, 
    	:foreign_key => 'product_id',  :class_name => 'Alsobought' 
  	has_many :relations_from, 
    	:foreign_key => 'alsogot_id', :class_name => 'Alsobought'                             

  	has_many :also_bought, 
    	:through => :relations_to,   :source => :alsogot
  	has_many :bought_with, 
    	:through => :relations_from, :source => :product

end
