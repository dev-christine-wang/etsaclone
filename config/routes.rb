Rails.application.routes.draw do
  root 'static_pages#root'

  namespace :api, defaults: { format: :json } do
    resources :users, only: [:create]
    resource :session, only: [:create, :destroy]
    resources :items, only: [:index, :show]
    resources :carts, only: [:index]
    resources :cart_items, only: [:index, :create, :update, :destroy]
  end
end
