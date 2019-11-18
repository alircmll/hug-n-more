Rails.application.routes.draw do
  devise_for :users
  root to: 'huggers#index'
  resources :huggers, only: [:show] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:index]
  resources :hugs, only: [:index, :show]
  namespace :hugger do
    resources :hugs
    resources :bookings
  end
end
