TableGuru::Application.routes.draw do

  devise_for :users
  root 'home#index'
  resource :projects
end
