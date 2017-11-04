require 'rails_helper'

RSpec.describe Ingredient, type: :model do
  let(:user) { FactoryGirl.create(:user) }
  let(:recipe) { user.recipes.create(FactoryGirl.attributes_for(:recipe)) }

  it "should create an ingredient" do
    ingredient = recipe.ingredients.create(
      name:       'Apple',
      quantity:   1,
      measure:    Measure.find_by(name: 'whole'),
      prep_notes: "peeled and chopped"
    )
    expect(ingredient.to_s).to eq("1 whole Apple, peeled and chopped")
  end
end
