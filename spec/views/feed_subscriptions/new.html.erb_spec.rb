require 'spec_helper'

describe "feed_subscriptions/new" do
  before(:each) do
    assign(:feed_subscription, stub_model(FeedSubscription,
      :feed_id => 1,
      :user_id => 1,
      :rating => 1
    ).as_new_record)
  end

  it "renders new feed_subscription form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => feed_subscriptions_path, :method => "post" do
      assert_select "input#feed_subscription_feed_id", :name => "feed_subscription[feed_id]"
      assert_select "input#feed_subscription_user_id", :name => "feed_subscription[user_id]"
      assert_select "input#feed_subscription_rating", :name => "feed_subscription[rating]"
    end
  end
end
