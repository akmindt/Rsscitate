require 'spec_helper'

describe "articles/show" do
  before(:each) do
    @article = assign(:article, stub_model(Article,
      :title => "Title",
      :feed_id => 1,
      :preview => "Preview",
      :timestamp => "Timestamp",
      :category_id => 2,
      :author_id => 3,
      :date => "Date"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/1/)
    rendered.should match(/Preview/)
    rendered.should match(/Timestamp/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/Date/)
  end
end
