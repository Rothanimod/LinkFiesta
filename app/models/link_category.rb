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

class LinkCategory < ApplicationRecord
  belongs_to :link
  belongs_to :category
end
