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

require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
