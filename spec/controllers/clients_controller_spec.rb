require "rails_helper"

RSpec.describe Api::ClientsController, :type => :controller do
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
        post :create, params: { client: { first_name: "Jane", last_name: "Doe" } }
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
        post :create, params: { client: { first_name: "", last_name: "Doe" } }
      end
      it "responds with a 422 status code" do
        expect(response).to have_http_status 422
      end
    end

  end

  describe "PUT #update" do
    describe "with valid parameters" do
      before(:each) do
        client = create(:client)
        put :update, params: { id: client.id, client: { first_name: "Francis", last_name: "McDormund" } }
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
        client = create(:client)
        put :update, params: { id: client.id, client: { first_name: "", active: false } }
      end
      it "responds with a 422 status code" do
        expect(response).to have_http_status 422
      end
    end
  end
end
