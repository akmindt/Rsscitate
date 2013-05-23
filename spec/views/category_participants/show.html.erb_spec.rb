require 'spec_helper'

describe "category_participants/show" do
  before(:each) do
    @category_participant = assign(:category_participant, stub_model(CategoryParticipant,
      :feed_id => 1,
      :category_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
