# == Schema Information
#
# Table name: items
#
#  id                 :integer          not null, primary key
#  seller_id          :integer          not null
#  name               :string           not null
#  description        :text             not null
#  price              :integer          not null
#  category           :string           not null
#  quantity           :integer          not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#

class Item < ApplicationRecord
  validates :seller_id, :name, :description, :price, :category, :quantity, presence: true

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>"}, default_url: "ring-1.jpg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  belongs_to :seller,
    class_name: 'User'
end
