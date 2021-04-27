Rails.application.routes.draw do
  get 'pictures/new'
  get 'pictures/index'
  get 'pictures/edit'
  get 'pictures/show'
  get 'pictures/confirm'
  get 'pictures/_form'
  resources :users, only: [:new, :create, :show]
  resources :sessions, only: [:new, :create, :destroy]
  resources :favorites, only: [:create, :destroy]
end
