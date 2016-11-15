Rails.application.routes.draw do
  resources :notes
  get 'landing/index'

  root 'landing#index'
end
