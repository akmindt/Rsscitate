class FeedSubscription < ActiveRecord::Base
  attr_accessible :feed_id, :rating, :user_id
  belongs_to :feed
  belongs_to :user


  def self.create_from_button(user_id, feed_id)
  	feed_subcription = new
  	feed_subcription.user_id = user_id
  	feed_subcription.feed_id = feed_id
  	feed_subcription.save
  end
end
