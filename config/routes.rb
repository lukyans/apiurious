Rails.application.routes.draw do

  root 'home#index'
  resources :dashboard, only: [:index]

  get '/auth/github', as: :github_login
  get '/auth/github/callback', to: "sessions#create"
  delete '/logout', to: "sessions#destroy", as: :logout
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
