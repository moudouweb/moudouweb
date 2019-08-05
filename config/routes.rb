Rails.application.routes.draw do
  resources :users
  root 'static_pages#home'
  get '/feature' => 'static_pages#feature'

  resources :user_sessions
  resources :users

  get 'login' => 'user_sessions#new', as: :login
  post 'logout' => 'user_sessions#destroy', as: :logout
end
