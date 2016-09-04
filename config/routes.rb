Rails.application.routes.draw do
  get 'users/new'

  root 'static_pages#home'
  get '/about', to: 'static_pages#about'
  get '/contactus', to: 'static_pages#contactus'
  get 'faq', to: 'static_pages#faq'
  get 'blog', to: 'static_pages#blog'
end