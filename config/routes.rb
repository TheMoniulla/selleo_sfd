Rails.application.routes.draw do
  root 'home#show'

  devise_for :users

  resource :home, only: :show, controller: :home
end
