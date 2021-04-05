Rails.application.routes.draw do
  # get 'comments/new'
  # post 'comments/create'
  get 'sessions/new'
  
  root 'pages#index'
  get 'pages/help'
 
  resources :users
  resources :topics
  
  get 'favorites/index'
  post '/favorites', to: 'favorites#create'
  delete '/favorites', to: 'favorites#destroy'
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  # get   'comments/new'
  # post  'comments/create'
  resources :comments
  
end
