Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root "movies#index"
<<<<<<< HEAD
  resources :questions do
    resources :solutions, only: [:create]
  end
  
=======
  resources :movies, only: [:index]
  resources :questions
  resources :solutions, only: [:create]
>>>>>>> master
  resources :aws_texts, only: [:index, :show]
  resources :lines, only: [:index, :show]
  resources :texts, only: [:index, :show]

end
