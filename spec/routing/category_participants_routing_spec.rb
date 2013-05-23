require "spec_helper"

describe CategoryParticipantsController do
  describe "routing" do

    it "routes to #index" do
      get("/category_participants").should route_to("category_participants#index")
    end

    it "routes to #new" do
      get("/category_participants/new").should route_to("category_participants#new")
    end

    it "routes to #show" do
      get("/category_participants/1").should route_to("category_participants#show", :id => "1")
    end

    it "routes to #edit" do
      get("/category_participants/1/edit").should route_to("category_participants#edit", :id => "1")
    end

    it "routes to #create" do
      post("/category_participants").should route_to("category_participants#create")
    end

    it "routes to #update" do
      put("/category_participants/1").should route_to("category_participants#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/category_participants/1").should route_to("category_participants#destroy", :id => "1")
    end

  end
end
