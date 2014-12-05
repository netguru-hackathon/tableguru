TableGuru::Application.routes.draw do

  devise_for :users
  root 'home#index'
  resources :projects, only: [:index, :create, :update, :show]
  resources :guests, only: [:show, :create, :update, :destroy]
  resources :chairs, only: [:show, :create, :update, :destroy]
  resources :tables, only: [:show, :create, :update, :destroy]
  resources :friendships, only: [:show, :create, :update, :destroy]
end
