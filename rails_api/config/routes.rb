Rails.application.routes.draw do
  resources :steps
  resources :ingredients
  resources :recipes
  resources :users, only: [:index, :show, :create, :update, :destroy]
end
