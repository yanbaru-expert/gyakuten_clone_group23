Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root "movies#index"
  get "/AwsText", to:"aws_texts#index"

end
