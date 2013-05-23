class FeedSubscription < ActiveRecord::Base
  attr_accessible :feed_id, :rating, :user_id
  belongs_to :feed
  belongs_to :user
end
