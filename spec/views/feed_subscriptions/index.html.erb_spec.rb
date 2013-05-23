require 'spec_helper'

describe "feed_subscriptions/index" do
  before(:each) do
    assign(:feed_subscriptions, [
      stub_model(FeedSubscription,
        :feed_id => 1,
        :user_id => 2,
        :rating => 3
      ),
      stub_model(FeedSubscription,
        :feed_id => 1,
        :user_id => 2,
        :rating => 3
      )
    ])
  end

  it "renders a list of feed_subscriptions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
