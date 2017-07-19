require "rails_helper"

RSpec.describe Api::ProjectsController, :type => :controller do
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
        client = create(:client)
        category = create(:category)
        post :create, params: { project: { name: "June - 2017", client_id: client.id, category_id: category.id } }
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
        post :create, params: { project: { first_name: "", last_name: "Doe" } }
      end
      it "responds with a 422 status code" do
        expect(response).to have_http_status 422
      end
    end

  end

  describe "PUT #update" do
    describe "with valid parameters" do
      before(:each) do
        project = create(:project)
        client = project.client
        category = project.category
        put :update, params: { id: project.id, project: { category_id: category.id, client_id: client.id, name: "Spring - 2017", active: false } }
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
        project = create(:project)
        put :update, params: { id: project.id, project: { name: "", active: false } }
      end
      it "responds with a 422 status code" do
        expect(response).to have_http_status 422
      end
    end
  end
end
