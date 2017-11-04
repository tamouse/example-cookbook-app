require 'rails_helper'

RSpec.describe Recipe, type: :model do

  let(:user) { FactoryGirl.create(:user) }

  describe "can be found by parametered slug" do
    let(:recipe) { user.recipes.create FactoryGirl.attributes_for(:recipe) }
    it "should be found" do
      expect(Recipe.find(recipe.to_param)).to eq(recipe)
    end
  end

  describe 'nested attributes' do

    it 'should save the new recipe with ingredients and steps' do
      params = ActionController::Parameters.new(
        {
          recipe: {
            name:                   "Test Recipe",
            ingredients_attributes: [
                                      {
                                        name:       "ingredient one",
                                        measure_id: Measure.first.id
                                      },
                                      {
                                        name:       "ingredient two",
                                        measure_id: Measure.last.id
                                      }],
            steps_attributes:       [
                                      {
                                        description: "step one"
                                      },
                                      {
                                        description: "step two"
                                      }]
          }
        }
      )

      new_recipe = params.require(:recipe).permit!

      recipe = user.recipes.create(new_recipe)
      expect(recipe).to be_persisted
    end
  end


end
