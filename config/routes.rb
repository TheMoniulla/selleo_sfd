Rails.application.routes.draw do
  root 'home#show'

  devise_for :users

  resource :home, only: :show, controller: :home

  namespace :user do
    resources :products, only: [:index, :new, :create, :edit, :update, :destroy]
    resources :order_items, only: [:index, :new, :create, :edit, :update, :destroy]
  end

  namespace :orderer do
    resources :orders, only: [:index, :show]
  end
end
