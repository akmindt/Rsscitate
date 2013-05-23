class CategoryParticipant < ActiveRecord::Base
  attr_accessible :category_id, :feed_id
  belongs_to :category
  belongs_to :feed
end
