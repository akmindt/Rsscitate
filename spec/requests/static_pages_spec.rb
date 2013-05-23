require 'spec_helper'

describe "Static Pages" do 

	describe "Home" do

		it "should have title 'Rsscitate | Home'" do
			visit '/static_pages/home'
			page.should_have_selector('title', :text => "Rsscitate | Home")
		end
	end
end