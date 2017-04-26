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

require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
