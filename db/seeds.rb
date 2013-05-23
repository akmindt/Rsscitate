# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

r = Random.new

15.times do |x|
	Feed.create(:description => "Descrption #{x}", :name => "Feed #{x + 1}", :url => "feeds/#{x + 1}")
end

5.times do |x|
	User.create(:name => "User #{x + 1}", :email => "#{x + 1}@email.com", :password => "#{x}23456")
end

5.times do |x|
	Author.create(:first_name => "#{x} First", :last_name => "#{x} Last")
end

5.times do |x|
	Category.create(:name => "Number #{x}")
end

50.times do |x|
	Article.create(:author_id => "#{r.rand(1...5)}", :feed_id => "#{r.rand(1...15)}", :summary => "Whatever this article stats with goes the hell in here", :title => "Article #{x + 1}", :body => "This is going to be the content of the article, complete with stuff that you will be able to read")
end

15.times do |x|
	FeedSubscription.create(:feed_id => r.rand(1...15), :user_id => r.rand(1...5))
end

25.times do |x|
	CategoryParticipant.create(:feed_id => r.rand(1...15), :category_id => r.rand(1...5))
end