Rails.application.routes.draw do
  devise_for :users
  resources :notes
  get 'landing/index'

  root 'landing#index'
end
