Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :appointment, only: [:new]

  resources :user, only: [:show]

  get 'about', to: 'pages#about'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
