require 'spec_helper'

describe "feeds/edit" do
  before(:each) do
    @feed = assign(:feed, stub_model(Feed,
      :name => "MyString",
      :description => "MyString",
      :url => "MyString"
    ))
  end

  it "renders the edit feed form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => feeds_path(@feed), :method => "post" do
      assert_select "input#feed_name", :name => "feed[name]"
      assert_select "input#feed_description", :name => "feed[description]"
      assert_select "input#feed_url", :name => "feed[url]"
    end
  end
end
