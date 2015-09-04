# == Schema Information
#
# Table name: activities
#
#  id         :integer          not null, primary key
#  activity   :text
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Activity < ActiveRecord::Base
end
