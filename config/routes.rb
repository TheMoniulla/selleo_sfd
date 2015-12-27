Rails.application.routes.draw do
  root 'home#show'

  devise_for :users

  resource :home, only: :show, controller: :home

  namespace :user do
    resources :products, only: [:index, :new, :create, :edit, :update, :destroy]
    resources :order_items, only: [:index, :new, :create, :edit, :update, :destroy]
    resources :past_orders, only: [:index, :show]
  end

  namespace :orderer do
    root 'order_items#index'
    resources :orders, only: [:index, :show]
    resources :order_items, only: [:index, :update]
  end

  namespace :admin do
    resources :users, only: :index
  end
end

