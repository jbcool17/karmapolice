User.destroy_all

u1 = User.create :email => 'john@user.com', :name => 'John', :password => 'pw', :admin => true
u2 = User.create :email => 'jackie@user.com', :name => 'Jackie', :password => 'pw', :admin => false
u3 = User.create :email => 'cheryl@user.com', :name => 'Cheryl', :password => 'pw', :admin => false
u4 = User.create :email => 'zach@user.com', :name => 'Zach Morris', :password => 'pw', :admin => false
u5 = User.create :email => 'lisa@user.com', :name => 'Lisa Turtle', :password => 'pw', :admin => false
u6 = User.create :email => 'miles@user.com', :name => 'Miles', :password => 'pw', :admin => false
u7 = User.create :email => 'kelly@user.com', :name => 'Kelly Kapowski', :password => 'pw', :admin => false
u8 = User.create :email => 'justin@user.com', :name => 'Justin', :password => 'pw', :admin => false
u9 = User.create :email => 'nate@user.com', :name => 'Nate', :password => 'pw', :admin => false
u10 = User.create :email => 'slater@user.com', :name => 'A. C. Slater', :password => 'pw', :admin => false


Activity.destroy_all

a1 = Activity.create :activity => 'Codeing for TicTacToe', :user_id => u1.id, :created_by_id => u3.id, :description => 'Made an app with javascript/html/css. up on github'
a2 = Activity.create :activity => 'Nursing', :user_id => u2.id, :created_by_id => u6.id, :description => 'Helped a person that was dying.'
a3 = Activity.create :activity => 'Opinions', :user_id => u3.id, :created_by_id => u4.id, :description => 'Questioned everything that when one during the day.'
a4 = Activity.create :activity => 'Presentation', :user_id => u6.id, :created_by_id => u1.id, :description => 'Talked about his new app.'
a5 = Activity.create :activity => 'Singing', :user_id => u9.id, :created_by_id => u1.id, :description => 'Did a set at a wedding.'
a6 = Activity.create :activity => 'Zach?Attack', :user_id => u4.id, :created_by_id => u7.id, :description => 'Zach is up no good again. Whats his deal'
a7 = Activity.create :activity => 'Eating Apples', :user_id => u6.id, :created_by_id => u1.id, :description => 'Miles eats every apple in the world'
a8 = Activity.create :activity => 'Zach Talks', :user_id => u4.id, :created_by_id => u7.id, :description => 'Zach talks to the camera'

#a9 = Activity.create :activity => 'Kelly', :user_id => u4.id, :created_by_id => u7.id, :description => 'Zach talks to the camera'

Point.destroy_all

Point.create :activity_id => a1.id, :voting_user_id => u2.id, :points => 10, :comment => 'Good job', :activity_user_id => u1.id
Point.create :activity_id => a1.id, :voting_user_id => u3.id, :points => 5, :comment => 'Good job', :activity_user_id => u1.id
Point.create :activity_id => a1.id, :voting_user_id => u10.id, :points => 6, :comment => 'Good job',:activity_user_id => u1.id
Point.create :activity_id => a1.id, :voting_user_id => u5.id, :points => 9, :comment => 'Really liked the way you did that.',:activity_user_id => u1.id
Point.create :activity_id => a1.id, :voting_user_id => u4.id, :points => 8, :comment => 'Way to go, on this.',:activity_user_id => u1.id

Point.create :activity_id => a2.id, :voting_user_id => u1.id, :points => 7, :comment => 'Good job broself', :activity_user_id => u2.id
Point.create :activity_id => a2.id, :voting_user_id => u6.id, :points => 6, :comment => 'Good job guy.', :activity_user_id => u2.id
Point.create :activity_id => a2.id, :voting_user_id => u7.id, :points => 6, :comment => 'Good job guy, but not good enough.', :activity_user_id => u2.id
Point.create :activity_id => a2.id, :voting_user_id => u1.id, :points => 1, :comment => 'Did not like anythings', :activity_user_id => u2.id

Point.create :activity_id => a3.id, :voting_user_id => u5.id, :points => 5, :comment => 'Good mate.', :activity_user_id => u3.id
Point.create :activity_id => a3.id, :voting_user_id => u9.id, :points => 6, :comment => 'Better then average job.', :activity_user_id => u3.id
Point.create :activity_id => a3.id, :voting_user_id => u1.id, :points => 9, :comment => 'Always with those opinions, but I guess they help.', :activity_user_id => u3.id

Point.create :activity_id => a4.id, :voting_user_id => u3.id, :points => 4, :comment => 'Eh...', :activity_user_id => u6.id
Point.create :activity_id => a4.id, :voting_user_id => u7.id, :points => 2, :comment => 'Bad job.', :activity_user_id => u6.id
Point.create :activity_id => a4.id, :voting_user_id => u3.id, :points => 10, :comment => 'Liked it mate.', :activity_user_id => u6.id
Point.create :activity_id => a4.id, :voting_user_id => u6.id, :points => 8, :comment => 'Bad job, lol just kidding.', :activity_user_id => u6.id
Point.create :activity_id => a4.id, :voting_user_id => u3.id, :points => 1, :comment => 'Did not care for this, wasnt what i though.', :activity_user_id => u6.id

Point.create :activity_id => a5.id, :voting_user_id => u6.id, :points => 5, :comment => 'Ok job.', :activity_user_id => u9.id
Point.create :activity_id => a5.id, :voting_user_id => u5.id, :points => 2, :comment => 'Bad job yo', :activity_user_id => u9.id


Point.create :activity_id => a6.id, :voting_user_id => u5.id, :points => 2, :comment => 'Bad job.', :activity_user_id => u4.id
Point.create :activity_id => a6.id, :voting_user_id => u8.id, :points => 2, :comment => 'Zach youre a douche', :activity_user_id => u4.id
Point.create :activity_id => a6.id, :voting_user_id => u9.id, :points => 2, :comment => 'its total zach and i dont like it!', :activity_user_id => u4.id
Point.create :activity_id => a6.id, :voting_user_id => u4.id, :points => 5, :comment => 'not sure', :activity_user_id => u4.id
Point.create :activity_id => a6.id, :voting_user_id => u1.id, :points => 1, :comment => 'hmmm....why zach', :activity_user_id => u4.id

Point.create :activity_id => a7.id, :voting_user_id => u1.id, :points => 1, :comment => 'Ate the core and all.', :activity_user_id => u6.id
Point.create :activity_id => a7.id, :voting_user_id => u4.id, :points => 10, :comment => 'Mmm Apples.', :activity_user_id => u6.id
Point.create :activity_id => a7.id, :voting_user_id => u2.id, :points => 2, :comment => 'He really eat to much apples, save some for us', :activity_user_id => u6.id
Point.create :activity_id => a7.id, :voting_user_id => u5.id, :points => 2, :comment => 'Hey, Miles - the world called its running out of apples.', :activity_user_id => u6.id


Point.create :activity_id => a8.id, :voting_user_id => u1.id, :points => 10, :comment => 'I dont know what people are talking about.', :activity_user_id => u4.id
Point.create :activity_id => a8.id, :voting_user_id => u7.id, :points => 10, :comment => 'yea man ', :activity_user_id => u4.id
Point.create :activity_id => a8.id, :voting_user_id => u3.id, :points => 1, :comment => 'WTF mate', :activity_user_id => u4.id
Point.create :activity_id => a8.id, :voting_user_id => u10.id, :points => 10, :comment => 'Great!', :activity_user_id => u4.id






