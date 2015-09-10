# == Schema Information
#
# Table name: points
#
#  id               :integer          not null, primary key
#  activity_id      :integer
#  voting_user_id   :integer
#  points           :integer
#  comment          :text
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  activity_user_id :integer
#

class Point < ActiveRecord::Base
	
	validates :activity_id, :presence => true 
	validates :voting_user_id, :presence => true #:uniqueness => true
	validates :points, :presence => true
	validates :activity_user_id, :presence => true
	validates :comment, :presence => true
	
	belongs_to :activities
end
