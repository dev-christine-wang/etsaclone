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
  validates :item_id, uniqueness: { scope: :cart_id, message: "Already in cart" }

  belongs_to :cart
  belongs_to :item

  has_one :user,
    through: :cart,
    source: :user

  has_one :seller,
    through: :item,
    source: :seller

  has_one :review,
    through: :user,
    source: :reviews
end
