Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show, :create, :update, :destroy] do
        resources :recipes, only: [:index, :show, :create, :update, :destroy]
      end
      resources :recipes, only: [:index, :show]
    end
  end
end
