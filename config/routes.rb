Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get 'dashboard', to: 'pages#dashboard'

  resources :instruments do
    resources :bookings, only: [:new, :create]
    resources :reviews, only: [:create]

    member do
      get :favourite
      get :unfavourite
    end
  end

  resources :bookings, only: :update


end
