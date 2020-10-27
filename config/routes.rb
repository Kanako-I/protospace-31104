Rails.application.routes.draw do
  devise_for :users
  # get 'prototypes/index'
  # post 'prototypes/new'
  # get 'prototypes/show'
  # delete 'prototype/destroy'
  # get 'comments/show'
  # get 'users/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to:"prototypes#index"
  resources :users
  resources :prototypes do
    resources :comments
  end
end
