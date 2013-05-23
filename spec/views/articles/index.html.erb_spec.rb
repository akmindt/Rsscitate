require 'spec_helper'

describe "articles/index" do
  before(:each) do
    assign(:articles, [
      stub_model(Article,
        :title => "Title",
        :feed_id => 1,
        :preview => "Preview",
        :timestamp => "Timestamp",
        :category_id => 2,
        :author_id => 3,
        :date => "Date"
      ),
      stub_model(Article,
        :title => "Title",
        :feed_id => 1,
        :preview => "Preview",
        :timestamp => "Timestamp",
        :category_id => 2,
        :author_id => 3,
        :date => "Date"
      )
    ])
  end

  it "renders a list of articles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Preview".to_s, :count => 2
    assert_select "tr>td", :text => "Timestamp".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Date".to_s, :count => 2
  end
end
