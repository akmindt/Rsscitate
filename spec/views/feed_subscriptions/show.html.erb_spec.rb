require 'spec_helper'

describe "feed_subscriptions/show" do
  before(:each) do
    @feed_subscription = assign(:feed_subscription, stub_model(FeedSubscription,
      :feed_id => 1,
      :user_id => 2,
      :rating => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end
