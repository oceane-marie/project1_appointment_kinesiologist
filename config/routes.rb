Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get 'about', to: 'pages#about'

  # resources :appointments, only: [:new, :create]
  resources :users, only: [:show]

  resources :users, only: [:show] do
    resources :appointments, only: [:new, :create, :destroy]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
