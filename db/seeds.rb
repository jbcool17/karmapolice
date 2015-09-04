User.destroy_all

u1 = User.create :email => 'john@user.com', :name => 'john'
u2 = User.create :email => 'jackie@user.com', :name => 'jackie'
u3 = User.create :email => 'cheryl@user.com', :name => 'cheryl'
u4 = User.create :email => 'joe@user.com', :name => 'joe'
u5 = User.create :email => 'lisa@user.com', :name => 'lisa'
u6 = User.create :email => 'miles@user.com', :name => 'miles'
u7 = User.create :email => 'steph@user.com', :name => 'steph'
u8 = User.create :email => 'justin@user.com', :name => 'justin'
u9 = User.create :email => 'nate@user.com', :name => 'nate'
u10 = User.create :email => 'char@user.com', :name => 'char'


Activity.destroy_all

a1 = Activity.create :activity => '', :user_id => u1.id
a2 = Activity.create :activity => '', :user_id => u2.id
a3 = Activity.create :activity => '', :user_id => u4.id
a4 = Activity.create :activity => '', :user_id => u5.id
a5 = Activity.create :activity => '', :user_id => u10.id

Point.destroy_all

Point.create :activity_id => a1.id, :voting_user_id => u2.id, :points => 10, :comment => 'Good job banana'
Point.create :activity_id => a1.id, :voting_user_id => u3.id, :points => 5, :comment => 'Good job mango'
Point.create :activity_id => a1.id, :voting_user_id => u10.id, :points => 11, :comment => 'Good job.'
Point.create :activity_id => a2.id, :voting_user_id => u1.id, :points => 7, :comment => 'Good job broself'
Point.create :activity_id => a2.id, :voting_user_id => u6.id, :points => 13, :comment => 'Good job guy.'
Point.create :activity_id => a3.id, :voting_user_id => u5.id, :points => 5, :comment => 'Good mate.'
Point.create :activity_id => a3.id, :voting_user_id => u9.id, :points => 6, :comment => 'Good job.'
Point.create :activity_id => a4.id, :voting_user_id => u3.id, :points => 4, :comment => 'Good job son.'
Point.create :activity_id => a4.id, :voting_user_id => u7.id, :points => 20, :comment => 'Good job.'
Point.create :activity_id => a5.id, :voting_user_id => u6.id, :points => 15, :comment => 'Good job.'
Point.create :activity_id => a5.id, :voting_user_id => u5.id, :points => 20, :comment => 'Good job yo'