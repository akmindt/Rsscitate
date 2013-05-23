class Category < ActiveRecord::Base
  attr_accessible :name
  has_many :category_participants
  has_many :feeds, :through => :category_participants
end
