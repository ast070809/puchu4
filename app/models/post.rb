# == Schema Information
#
# Table name: posts
#
#  id          :integer          not null, primary key
#  title       :text
#  description :text
#  link        :text
#  created_at  :datetime
#  updated_at  :datetime
#  user_id     :integer
#

class Post < ActiveRecord::Base
	validates :title, presence: true
	
	acts_as_votable

	belongs_to :user
end
