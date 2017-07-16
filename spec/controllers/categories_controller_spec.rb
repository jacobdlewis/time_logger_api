require "rails_helper"

RSpec.describe Api::CategoriesController, :type => :controller do
  describe "GET #index" do
    before(:each) do
      get :index
    end
    it "responds successfully" do
      expect(response).to be_success
    end
    it "responds with a HTTP 200 status code" do
      expect(response).to have_http_status 200
    end
    it "responds with JSON content" do
      expect(response.content_type).to eq("application/json")
    end
  end

  describe "POST #create" do
    describe "with valid parameters" do
      before(:each) do
        post :create, params: { category: { "name": "Meetings" } }
      end
      it "responds successfully" do
        expect(response).to be_success
      end
      it "responds with a 201 status code" do
        expect(response).to have_http_status 201
      end
    end
    describe "with invalid parameters" do
      before(:each) do
        post :create, params: { category: { name: "" } }
      end
      it "responds with a 422 status code" do
        expect(response).to have_http_status 422
      end
    end

  end

  describe "PUT #update" do
    describe "with valid parameters" do
      before(:each) do
        category = create(:category)
        put :update, params: { id: category.id, category: { name: "Programming" } }
      end
      it "responds successfully" do
        expect(response).to be_success
      end
      it "responds with a 204 status code" do
        expect(response).to have_http_status 200
      end
    end
    describe "with invalid parameters" do
      before(:each) do
        category = create(:category)
        put :update, params: { id: category.id, category: { name: "", active: false } }
      end
      it "responds with a 422 status code" do
        expect(response).to have_http_status 422
      end
    end
  end
end
