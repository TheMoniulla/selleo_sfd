Rails.application.routes.draw do
  root 'home#show'

  devise_for :users

  resource :home, only: :show, controller: :home
  resources :products, only: [:index, :new, :create, :edit, :update, :destroy]
  resources :order_items, only: [:index, :new, :create, :edit, :update, :destroy]
end
