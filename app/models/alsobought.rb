# == Schema Information
#
# Table name: alsoboughts
#
#  id         :integer          not null, primary key
#  product_id :integer
#  alsogot_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Alsobought < ActiveRecord::Base

	belongs_to :product, 
    	:class_name => 'Product', :foreign_key => 'product_id' 
  	belongs_to :alsogot, 
    	:class_name => 'Product', :foreign_key => 'alsogot_id' 

end


