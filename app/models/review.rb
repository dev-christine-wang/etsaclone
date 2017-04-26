# == Schema Information
#
# Table name: reviews
#
#  id          :integer          not null, primary key
#  item_id     :integer          not null
#  user_id     :integer          not null
#  rating      :integer          not null
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Review < ApplicationRecord
  validates :item_id, :user_id, :rating, presence: true

  belongs_to :item
  belongs_to :user
end
