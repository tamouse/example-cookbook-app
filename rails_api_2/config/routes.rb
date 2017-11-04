Rails.application.routes.draw do
  resources :recipes
  resources :users, only: [:index, :show, :create, :update, :destroy]
end
