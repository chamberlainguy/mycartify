# == Schema Information
#
# Table name: orders
#
#  id         :integer          not null, primary key
#  name       :string
#  email      :string
#  address    :string
#  suburb     :string
#  state      :string
#  post_code  :string
#  country    :string
#  shipped    :date
#  buyer_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Order < ActiveRecord::Base

	belongs_to :buyer

	has_many :orderlines, :dependent => :destroy

end
