require 'open-uri'
require 'nokogiri'

class Feed < ActiveRecord::Base
  attr_accessible :description, :name, :url
  has_many :articles
  has_many :category_participants
  has_many :categories, :through => :category_participants
  has_many :feed_subscriptions
  has_many :users, :through => :feed_subscriptions

   def self.create_from_rss(url)
    doc = Nokogiri::XML(open(url))
    feed = new
    feed.name = doc.xpath("//channel/title").first.text
    feed.description = doc.xpath("//channel/description").first.text
    feed.url = url
    feed.save
    items_array = doc.xpath('//item')
    items_array.length.times do |x|
      article_stream = feed.articles.new
      article_stream.title = items_array[x - 1].xpath("title").text
      article_stream.summary = items_array[x- 1].xpath("description").text
      article_stream.body = items_array[x - 1].xpath("content:encoded").text
      article_stream.author = items_array[x - 1].xpath("dc:creator").text
      article_stream.save
    end

    return feed
  end

  def self.update_from_rss(url)
    doc = Nokogiri::XML(open(url))
    items_array = doc.xpath('//item')
    article_stream = feed.articles.new
      article_stream.title = items_array[x - 1].xpath("title").text
      article_stream.summary = items_array[x- 1].xpath("description").text
      article_stream.body = items_array[x - 1].xpath("content:encoded").text
      article_stream.author = items_array[x - 1].xpath("dc:creator").text
      article_stream.save
    end
  end