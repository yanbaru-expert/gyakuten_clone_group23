Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root "movies#index"
  resources :movies, only: [:index]
  resources :questions
  resources :solutions, only: [:create]
  resources :aws_texts, only: [:index, :show]
  resources :lines, only: [:index, :show]

end
