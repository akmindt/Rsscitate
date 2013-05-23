class User < ActiveRecord::Base
  attr_accessible :email, :password, :name
  has_many :feed_subscriptions
  has_many :feeds, :through => :feed_subscriptions

  def articles(limit = 10)
  	feed_id = feeds.collect {|feed| feed.id}
  	Article.order("created_at DESC").limit(limit).where(:feed_id => feed_id)
  end

end