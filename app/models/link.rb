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
#

#TODO:  categories as hashtag maybe implement that?
#define how a link would look? Add a migration for commentary for each link?
#that if i ll fetch the categories from the comment.

class Link < ApplicationRecord
  #relations
  belongs_to :user
  has_many :votes
  has_many :categories, through: :link_categories
end
