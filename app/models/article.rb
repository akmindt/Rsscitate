require 'open-uri'
require 'nokogiri'

class Article < ActiveRecord::Base
  attr_accessible :feed_id, :summary, :title, :body, :author
  belongs_to :feed	
end