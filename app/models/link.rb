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
class Link < ApplicationRecord
  belongs_to :user

end
