require 'spec_helper'

describe "category_participants/edit" do
  before(:each) do
    @category_participant = assign(:category_participant, stub_model(CategoryParticipant,
      :feed_id => 1,
      :category_id => 1
    ))
  end

  it "renders the edit category_participant form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => category_participants_path(@category_participant), :method => "post" do
      assert_select "input#category_participant_feed_id", :name => "category_participant[feed_id]"
      assert_select "input#category_participant_category_id", :name => "category_participant[category_id]"
    end
  end
end
