require 'rails_helper'

RSpec.describe Recipe, type: :model do
  let(:user) { FactoryBot.create(:user) }
  describe 'validations' do
    context "missing name" do
      it "fails validation for missing name" do
        recipe = Recipe.new(user: user)
        aggregate_failures do
          expect(recipe).not_to be_valid
          expect(recipe.errors.full_messages).to include("Name can't be blank")
        end
      end
    end
  end
end
