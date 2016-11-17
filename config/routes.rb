Rails.application.routes.draw do
  devise_for :users
  resources :notes
  get 'landing/index'

  authenticated :user do
    root 'notes#index', as: 'authenticated_root'
  end
  
  root 'landing#index'
end
