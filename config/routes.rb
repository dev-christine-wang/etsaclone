Rails.application.routes.draw do
  root 'static_pages#root'

  namespace :api, defaults: { format: :json } do
    resources :users, only: [:create]
    resource :session, only: [:create, :destroy]
    resources :items, only: [:index, :show] do
      resources :reviews, only: [:index]
    end
    resources :carts, only: [:create, :index, :update]
    resources :cart_items, only: [:index, :create, :update, :destroy]
    resources :reviews, only: [:show, :create, :update, :destroy]
  end
end
