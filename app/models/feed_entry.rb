class FeedEntry < ActiveRecord::Base
  attr_accessible :guid, :name, :summary, :url
end
