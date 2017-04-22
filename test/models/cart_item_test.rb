# == Schema Information
#
# Table name: cart_items
#
#  id            :integer          not null, primary key
#  cart_id       :integer          not null
#  item_id       :integer          not null
#  item_quantity :integer          not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class CartItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
