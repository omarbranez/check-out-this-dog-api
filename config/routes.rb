Rails.application.routes.draw do
  resources :encounters
  resources :dogs
  resources :users
  post 'login', to: "sessions#login"
  post 'autologin', to: "sessions#autologin"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
