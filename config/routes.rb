Rails.application.routes.draw do
  resources :reactions
  resources :reports
  resources :dogs
  resources :users
  resources :comments
  resources :sessions, only: [:create]
  get "/autologin", to: 'sessions#autologin'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
