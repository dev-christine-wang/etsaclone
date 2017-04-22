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

class CartItem < ApplicationRecord
  validates :cart_id, :item_id, :item_quantity, presence: true

  belongs_to :cart
  belongs_to :item

  has_one :user,
    through: :cart,
    source: :user
end
