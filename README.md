== README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


Please feel free to use a different markup language if you do not plan to run
<tt>rake doc:app</tt>.

```ruby
#Gets all votes/entries for an activity
#Where grabs all like values
count = 0
a = Point.where :activity_id => 7

#Adds up all points for the activity
a.each do |b|
	count += b.point
end
#Gathers all Comments to hash
user_comment_hash = {}
a.each do |b|
	user_comment_hash[b.voting_user_id] =  b.comment
end
#=> {22=>"Good job banana", 23=>"Good job mango", 30=>"Good job."}

# Grabs all activities of user
z = Activity.where :user_id => 31

count = ##
```
