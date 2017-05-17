Rails.application.routes.draw do

  devise_for :users
  root 'static_pages#home'


  # get 'pages/index'

  get '/home', to: 'pages#home'
  get '/profile', to: 'pages#profile'
  get '/explore', to: 'pages#explore'

  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
end
