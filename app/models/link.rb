# == Schema Information
#
# Table name: links
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  link        :string
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  comment     :text
#

class Link < ApplicationRecord
  #relations
  belongs_to :user
  has_many :votes
  has_many :link_categories
  has_many :categories, through: :link_categories
  validates_presence_of :link, :title, :description
end
