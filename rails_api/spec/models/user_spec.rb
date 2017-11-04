require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'validations' do
    before(:each) do
      @user1 = FactoryGirl.create(:user)
      @user2 = FactoryGirl.build(:user, email: @user1.email)
    end
    it "should fail validate" do
      expect(@user2).not_to be_valid
    end
    it "should require a unique email" do
      @user2.validate
      expect(@user2.errors.full_messages).to include("Email has already been taken")
    end
  end

end
