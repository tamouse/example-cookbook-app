require 'rails_helper'

RSpec.describe Recipe, type: :model do

  let(:user) { FactoryGirl.create(:user)}

  describe "can be found by parametered slug" do
    let(:recipe) { user.recipes.create FactoryGirl.attributes_for(:recipe) }
    it "should be found" do
      expect(Recipe.find(recipe.to_param)).to eq(recipe)
    end
  end

end
