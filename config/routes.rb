Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/new'

  root 'static_pages#home'
  get '/about', to: 'static_pages#about'
  get '/contactus', to: 'static_pages#contactus'
  get 'faq', to: 'static_pages#faq'
  get 'blog', to: 'static_pages#blog'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
  resources :microposts,          only: [:create, :destroy]
end