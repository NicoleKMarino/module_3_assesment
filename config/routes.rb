Rails.application.routes.draw do
  root 'items#index'

  resources :items,  only: [:index, :show]
  resources :orders, only: [:index, :show]
  resources :users,  only: [:index, :show]

  namespace :api do
    namespace :v1, defaults: {format: :json} do
            get "items/find_all", to: "items/find#index"
            get "items/find", to: "items/find#show"   
     end
  end

end
