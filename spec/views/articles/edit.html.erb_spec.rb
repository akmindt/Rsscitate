require 'spec_helper'

describe "articles/edit" do
  before(:each) do
    @article = assign(:article, stub_model(Article,
      :title => "MyString",
      :feed_id => 1,
      :preview => "MyString",
      :timestamp => "MyString",
      :category_id => 1,
      :author_id => 1,
      :date => "MyString"
    ))
  end

  it "renders the edit article form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => articles_path(@article), :method => "post" do
      assert_select "input#article_title", :name => "article[title]"
      assert_select "input#article_feed_id", :name => "article[feed_id]"
      assert_select "input#article_preview", :name => "article[preview]"
      assert_select "input#article_timestamp", :name => "article[timestamp]"
      assert_select "input#article_category_id", :name => "article[category_id]"
      assert_select "input#article_author_id", :name => "article[author_id]"
      assert_select "input#article_date", :name => "article[date]"
    end
  end
end
