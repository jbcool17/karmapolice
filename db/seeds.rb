User.destroy_all
# needs password
u1 = User.create :email => 'john@user.com', :name => 'John', :password => 'duck'
u2 = User.create :email => 'jackie@user.com', :name => 'Jackie', :password => 'duck'
u3 = User.create :email => 'cheryl@user.com', :name => 'Cheryl', :password => 'duck'
u4 = User.create :email => 'joe@user.com', :name => 'Joe', :password => 'duck'
u5 = User.create :email => 'lisa@user.com', :name => 'Lisa', :password => 'duck'
u6 = User.create :email => 'miles@user.com', :name => 'Miles', :password => 'duck'
u7 = User.create :email => 'steph@user.com', :name => 'Steph', :password => 'duck'
u8 = User.create :email => 'justin@user.com', :name => 'Justin', :password => 'duck'
u9 = User.create :email => 'nate@user.com', :name => 'Nate', :password => 'duck'
u10 = User.create :email => 'char@user.com', :name => 'Char', :password => 'duck'


Activity.destroy_all

a1 = Activity.create :activity => 'John Surfing', :user_id => u1.id, :description => 'Surfed a narly wave.'
a2 = Activity.create :activity => 'Nursing', :user_id => u2.id, :description => 'Helped a person.'
a3 = Activity.create :activity => 'Opinions', :user_id => u3.id, :description => 'Questioned everything that when one during the day.'
a4 = Activity.create :activity => 'Presentation', :user_id => u6.id, :description => 'Talked about his new app.'
a5 = Activity.create :activity => 'Singing', :user_id => u10.id, :description => 'Did a set at a wedding.'
a6 = Activity.create :activity => 'Guitar Preformance', :user_id => u1.id, :description => 'Played some songs at the venue.'

Point.destroy_all

Point.create :activity_id => a1.id, :voting_user_id => u2.id, :points => 100, :comment => 'Good job banana'
Point.create :activity_id => a1.id, :voting_user_id => u3.id, :points => 50, :comment => 'Good job mango'
Point.create :activity_id => a1.id, :voting_user_id => u10.id, :points => 110, :comment => 'Good job.'
Point.create :activity_id => a2.id, :voting_user_id => u1.id, :points => 70, :comment => 'Good job broself'
Point.create :activity_id => a2.id, :voting_user_id => u6.id, :points => 130, :comment => 'Good job guy.'
Point.create :activity_id => a3.id, :voting_user_id => u5.id, :points => 50, :comment => 'Good mate.'
Point.create :activity_id => a3.id, :voting_user_id => u9.id, :points => 60, :comment => 'Good job.'
Point.create :activity_id => a4.id, :voting_user_id => u3.id, :points => 40, :comment => 'Good job son.'
Point.create :activity_id => a4.id, :voting_user_id => u7.id, :points => 200, :comment => 'Good job.'
Point.create :activity_id => a5.id, :voting_user_id => u6.id, :points => 150, :comment => 'Good job.'
Point.create :activity_id => a5.id, :voting_user_id => u5.id, :points => 200, :comment => 'Good job yo'
Point.create :activity_id => a6.id, :voting_user_id => u5.id, :points => 200, :comment => 'Good job yo bro hoe gooo'