require 'rails_helper'

RSpec.describe "NasaPictures", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/nasa_picture/index"
      expect(response).to have_http_status(:success)
    end
  end

end
