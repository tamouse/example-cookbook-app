require 'rails_helper'

RSpec.describe Ingredient, type: :model do
  let(:user) {FactoryGirl.create(:user)}
  let(:recipe) {user.recipes.create(FactoryGirl.attributes_for(:recipe))}

  it "should create an ingredient" do

  end
end
