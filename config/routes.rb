Rails.application.routes.draw do
  root 'home#show'

  devise_for :users

  resource :home, only: :show, controller: :home
  resources :products, only: [:new, :index, :edit, :create, :update, :destroy]
end
