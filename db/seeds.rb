User.destroy_all
# needs password
u1 = User.create :email => 'john@user.com', :name => 'John', :password => 'duck', :admin => true
u2 = User.create :email => 'jackie@user.com', :name => 'Jackie', :password => 'duck'
u3 = User.create :email => 'cheryl@user.com', :name => 'Cheryl', :password => 'duck'
u4 = User.create :email => 'joe@user.com', :name => 'Joe', :password => 'duck'
u5 = User.create :email => 'lisa@user.com', :name => 'Lisa', :password => 'duck'
u6 = User.create :email => 'miles@user.com', :name => '', :password => 'duck'
u7 = User.create :email => 'steph@user.com', :name => 'Steph', :password => 'duck'
u8 = User.create :email => 'justin@user.com', :name => 'Justin', :password => 'duck'
u9 = User.create :email => 'nate@user.com', :name => 'Nate', :password => 'duck'
u10 = User.create :email => 'char@user.com', :name => 'Char', :password => 'duck'


Activity.destroy_all

a1 = Activity.create :activity => 'Codeing for TicTacToe', :user_id => u1.id, :created_by_id => u3.id, :description => 'Made an app with javascript/html/css. up on github'
a2 = Activity.create :activity => 'Nursing', :user_id => u2.id, :created_by_id => u6.id, :description => 'Helped a person that was dying.'
a3 = Activity.create :activity => 'Opinions', :user_id => u3.id, :created_by_id => u4.id, :description => 'Questioned everything that when one during the day.'
a4 = Activity.create :activity => 'Presentation', :user_id => u6.id, :created_by_id => u1.id, :description => 'Talked about his new app.'
a5 = Activity.create :activity => 'Singing', :user_id => u9.id, :created_by_id => u1.id, :description => 'Did a set at a wedding.'
a6 = Activity.create :activity => 'Guitar Preformance', :user_id => u1.id, :created_by_id => u9.id, :description => 'Shredded some songs at the venue.'

Point.destroy_all

Point.create :activity_id => a1.id, :voting_user_id => u2.id, :points => 10, :comment => 'Good job banana', :activity_user_id => u1.id
Point.create :activity_id => a1.id, :voting_user_id => u3.id, :points => 5, :comment => 'Good job mango', :activity_user_id => u1.id
Point.create :activity_id => a1.id, :voting_user_id => u10.id, :points => 6, :comment => 'Good job.',:activity_user_id => u1.id
Point.create :activity_id => a2.id, :voting_user_id => u1.id, :points => 7, :comment => 'Good job broself', :activity_user_id => u2.id
Point.create :activity_id => a2.id, :voting_user_id => u6.id, :points => 6, :comment => 'Good job guy.', :activity_user_id => u2.id
Point.create :activity_id => a3.id, :voting_user_id => u5.id, :points => 5, :comment => 'Good mate.', :activity_user_id => u3.id
Point.create :activity_id => a3.id, :voting_user_id => u9.id, :points => 6, :comment => 'Good job.', :activity_user_id => u3.id
Point.create :activity_id => a4.id, :voting_user_id => u3.id, :points => 4, :comment => 'Good job son.', :activity_user_id => u6.id
Point.create :activity_id => a4.id, :voting_user_id => u7.id, :points => 2, :comment => 'Good job.', :activity_user_id => u6.id
Point.create :activity_id => a5.id, :voting_user_id => u6.id, :points => 5, :comment => 'Good job.', :activity_user_id => u10.id
Point.create :activity_id => a5.id, :voting_user_id => u5.id, :points => 2, :comment => 'Good job yo', :activity_user_id => u10.id
Point.create :activity_id => a6.id, :voting_user_id => u5.id, :points => 2, :comment => 'Good job yo bro hoe gooo', :activity_user_id => u1.id