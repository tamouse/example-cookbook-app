require 'rails_helper'
require "faker"

RSpec.describe "Recipes", type: :request do
  describe 'POST /recipes with nested attributes' do
    let(:user) {FactoryBot.create(:user)}
    let(:measure) {Measure.create!(name: "jolly", abbrev: "jol")}
    let(:valid_nested_attributes) do

      {
        recipe: {
          user_id: user.id,
          name: Faker::Food.dish,
          description: Faker::Lorem.paragraph,
          ingredients_attributes: [
            {
              name: Faker::Food.ingredient,
              quantity: rand(10)+1,
              measure_id: measure.id,
              prep_notes: Faker::Lorem.sentence,
            },
            {
              name: Faker::Food.ingredient,
              quantity: rand(10)+1,
              measure_id: measure.id,
              prep_notes: Faker::Lorem.sentence,
            },
            {
              name: Faker::Food.ingredient,
              quantity: rand(10)+1,
              measure_id: measure.id,
              prep_notes: Faker::Lorem.sentence,
            },
          ],
          steps_attributes: [
            {
              description: Faker::Lorem.paragraph,
            },
            {
              description: Faker::Lorem.paragraph,
            },
          ],
        }
      }

    end

    it "creates a new recipe with nested attributes" do
      post recipes_path, params: valid_nested_attributes
      expect(response).to have_http_status(:created),response.body
    end

  end

end
