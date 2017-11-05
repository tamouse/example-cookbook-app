require 'rails_helper'

RSpec.describe Step, type: :model do

  let(:user) {FactoryBot.create(:user)}
  let(:recipe) {FactoryBot.create(:recipe, user: user)}

  describe 'sequence_number' do
    it "should increment the sequence number from the highest sequence number in the steps" do
      user1 = Step.create!(description: "step one", recipe: recipe, sequence_number: 99)
      user2 = Step.create!(description: "step two", recipe: recipe)
      expect(user2.sequence_number).to eq(100)
    end
  end

end
