# == Schema Information
#
# Table name: points
#
#  id             :integer          not null, primary key
#  activity_id    :integer
#  voting_user_id :integer
#  points         :integer
#  comment        :text
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Point < ActiveRecord::Base
end
