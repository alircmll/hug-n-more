Rails.application.routes.draw do
  devise_for :users
  root to: 'hugs#index'
  resources :huggers, only: [:show, :index] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:index]
  resources :hugs, only: [:index, :show]
  namespace :hugger do
    resources :hugs
    resources :bookings
  end
end
