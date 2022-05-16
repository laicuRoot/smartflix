require 'rails_helper'

RSpec.describe "Shows", type: :request do
  describe "GET root home page" do
    it "returns http success" do
      get "/"
      expect(response).to have_http_status(:success)
    end
  end

end
