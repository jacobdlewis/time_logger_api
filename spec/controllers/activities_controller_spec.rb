require "rails_helper"

RSpec.describe Api::ActivitiesController, :type => :controller do
  describe "GET #index" do
    before(:each) do
      get :index
    end

    it "responds successfully" do
      expect(response).to be_success
    end

    it "responds with a HTTP 200 status code" do
      expect(response).to have_http_status(200)
    end

    it "responds with JSON content" do
      expect(response.content_type).to eq("application/json")
    end
  end
end
