# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Category < ApplicationRecord
  has_many :link_categories
  has_many :links, through: :link_categories
  validates_uniqueness_of :name, case_sensitive: false
  validates :name, presence: true

end
