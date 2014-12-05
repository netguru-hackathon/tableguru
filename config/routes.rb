TableGuru::Application.routes.draw do

  devise_for :users
  root 'home#index'
  resources :projects, only: [:index, :create, :update, :show]
  resources :projects do
    post 'optimize', on: :optimize
  end
  resources :guests
  resources :chairs
  resources :tables
  resources :friendships
end
