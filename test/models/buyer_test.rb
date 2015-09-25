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

require 'test_helper'

class BuyerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
