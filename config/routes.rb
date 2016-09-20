Rails.application.routes.draw do
  root 'items#index'

  resources :items,  only: [:index, :show]
  resources :orders, only: [:index, :show]
  resources :users,  only: [:index, :show]
  resources :search,  only: [:index]
  get "stores/:id", to: "search#show",as: "store"

  namespace :api do
    namespace :v1, defaults: {format: :json} do
      resources :items
    end
  end

end
