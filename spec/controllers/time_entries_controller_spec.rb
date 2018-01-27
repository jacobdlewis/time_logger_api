require "rails_helper"

RSpec.describe Api::TimeEntriesController, :type => :controller do
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
        post :create, params: { time_entry: { hours: 1.5, date: "2018-01-27T04:11:30.220Z" } }

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
        post :create, params: {
          time_entry: {
            activity_id: 1,
            area: "Monticello",
            business_mileage: 20,
            comment: "includes travel",
            date: Time.now
          }
        }
      end
      it "responds with a 422 status code" do
        expect(response).to have_http_status 422
      end
    end

  end

  describe "PUT #update" do
    describe "with valid parameters" do
      before(:each) do
        time_entry = create(:time_entry)
        put :update, params: { id: time_entry.id, time_entry: { hours: 5.5 } }
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
        time_entry = create(:time_entry)
        put :update, params: { id: time_entry.id, time_entry: { hours: nil } }
      end
      it "responds with a 422 status code" do
        expect(response).to have_http_status 422
      end
    end
  end
end
