require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    context "missing email" do
      it "validates presence of email" do
        user = User.new
        aggregate_failures do
          expect(user.validate).to eq(false)
          expect(user.errors.full_messages).to include("Email can't be blank")
        end
      end
    end

    context "unique email" do
      it "validates uniqueness of email" do
        user1 = FactoryBot.create(:user_with_password)
        user2 = FactoryBot.build(:user_with_password, email: user1.email)
        aggregate_failures do
          expect(user2.validate).to eq(false)
          expect(user2.errors.full_messages).to include("Email has already been taken")
        end
      end
    end
  end

end
