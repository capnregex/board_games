require "rails_helper"

RSpec.describe MorrisController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/morris").to route_to("morris#index")
    end

    it "routes to #new" do
      expect(get: "/morris/new").to route_to("morris#new")
    end

    it "routes to #show" do
      expect(get: "/morris/1").to route_to("morris#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/morris/1/edit").to route_to("morris#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/morris").to route_to("morris#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/morris/1").to route_to("morris#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/morris/1").to route_to("morris#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/morris/1").to route_to("morris#destroy", id: "1")
    end
  end
end
