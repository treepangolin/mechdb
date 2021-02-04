Rails.application.routes.draw do
  root 'home#index'

  resources :groupbuys
  resources :keyswitches

  devise_for :users, path: 'auth'
end
