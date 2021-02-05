Rails.application.routes.draw do
  root 'home#index'

  resources :groupbuys

  devise_for :users, path: 'auth'
end
