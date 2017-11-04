require 'rails_helper'

RSpec.describe Step, type: :model do
  let(:user) {FactoryGirl.create(:user)}
  let(:recipe) {user.recipes.create(FactoryGirl.attributes_for(:recipe))}

  it "fills in a sequence number if one is given" do
    step = recipe.steps.create(description: "Test step")
    expect(step.sequence).to eq(1)
  end

  it "should use the sequence number given" do
    step = recipe.steps.create(description: "Test step", sequence: 12)
    expect(step.sequence).to eq(12)
  end

  it "should use the next highest sequence number" do
    recipe.steps.create(description: "Prev step", sequence: 99)
    expect(recipe.steps.map(&:sequence).max.to_i).to eq(99)
    step = recipe.steps.create(description: "Test step")
    expect(step.sequence).to eq(100), recipe.steps.map(&:sequence).inspect
  end
end
