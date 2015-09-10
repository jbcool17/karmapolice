# == Schema Information
#
# Table name: activities
#
#  id            :integer          not null, primary key
#  activity      :text
#  user_id       :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  description   :text
#  created_by_id :integer
#

class Activity < ActiveRecord::Base
	has_many :points, dependent: :destroy
	belongs_to :users

	validates :activity, :presence => true, :uniqueness => true
	validates :description, :presence => true, :length => { :minimum => 3 }
	validates :user_id, :presence => true

	accepts_nested_attributes_for :points, allow_destroy: true
end
