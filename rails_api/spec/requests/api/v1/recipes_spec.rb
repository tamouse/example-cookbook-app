require 'rails_helper'

RSpec.describe "Recipes", type: :request do
  describe "GET /recipes" do
    it "works! (now write some real specs)" do
      get api_v1_recipes_path
      expect(response).to have_http_status(200)
    end
  end
end
