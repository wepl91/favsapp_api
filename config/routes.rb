Rails.application.routes.draw do
  
  resources :notifications
  resources :user_skills
  resources :addresses
  resources :services
  resources :categories
  resources :skills
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'auth/register', to: 'users#register'
  post 'auth/login', to: 'users#login'
  get 'test', to: 'users#test'
  get 'users', to: 'users#index'
  get 'users/:id', to: 'users#show'
end
