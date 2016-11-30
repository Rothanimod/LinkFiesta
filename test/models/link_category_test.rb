# == Schema Information
#
# Table name: link_categories
#
#  id          :integer          not null, primary key
#  link_id     :integer
#  category_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class LinkCategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
