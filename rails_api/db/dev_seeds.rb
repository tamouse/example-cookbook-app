# Seeds for Development
require 'factory_girl_rails'

# A user
user_attributes = FactoryGirl.attributes_for(:user)
user = User.find_or_create_by!(email: user_attributes[:email]) do |user|
  user.password = user_attributes[:password]
  user.password_digest = user_attributes[:password]
end

# Some recipes

(rand(10)+5).times do |n|
  recipe = user.recipes.create(FactoryGirl.attributes_for(:recipe))
  recipe.ingredients.create(FactoryGirl.attributes_for_list(:ingredient, rand(5)+2))
  recipe.steps.create(FactoryGirl.attributes_for_list(:step, rand(4)+2))
end


