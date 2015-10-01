# == Schema Information
#
# Table name: orderlines
#
#  id           :integer          not null, primary key
#  product_name :string
#  quantity     :integer
#  total_price  :decimal(, )
#  product_id   :integer
#  order_id     :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class OrderlineTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
