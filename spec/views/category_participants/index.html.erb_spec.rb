require 'spec_helper'

describe "category_participants/index" do
  before(:each) do
    assign(:category_participants, [
      stub_model(CategoryParticipant,
        :feed_id => 1,
        :category_id => 2
      ),
      stub_model(CategoryParticipant,
        :feed_id => 1,
        :category_id => 2
      )
    ])
  end

  it "renders a list of category_participants" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
