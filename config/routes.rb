Rails.application.routes.draw do
  get 'users/new'
  get 'users/show'
  resources :articles
  resources :user1s
  root 'con1#home'
  get 'con1/about'
  get 'con1/merch'
  get 'con1/blog'
  resources :users
  get    '/signup',  to: 'users#new'
  post   '/signup',  to: 'users#create'     
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
