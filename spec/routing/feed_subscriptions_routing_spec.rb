require "spec_helper"

describe FeedSubscriptionsController do
  describe "routing" do

    it "routes to #index" do
      get("/feed_subscriptions").should route_to("feed_subscriptions#index")
    end

    it "routes to #new" do
      get("/feed_subscriptions/new").should route_to("feed_subscriptions#new")
    end

    it "routes to #show" do
      get("/feed_subscriptions/1").should route_to("feed_subscriptions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/feed_subscriptions/1/edit").should route_to("feed_subscriptions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/feed_subscriptions").should route_to("feed_subscriptions#create")
    end

    it "routes to #update" do
      put("/feed_subscriptions/1").should route_to("feed_subscriptions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/feed_subscriptions/1").should route_to("feed_subscriptions#destroy", :id => "1")
    end

  end
end
