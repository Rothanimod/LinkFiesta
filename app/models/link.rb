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

#TODO: Add categories  - add votes - categories as hashtag maybe implement that?
#define how a link would look? Add a migration for commentary for each link?
#that if i ll fetch the categories from the comment.
#implement has many trough for catergories - link relation.
class Link < ApplicationRecord
  belongs_to :user
  has_many :categories, through: :link_categories
end
