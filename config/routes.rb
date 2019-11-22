Rails.application.routes.draw do
  devise_for :users
  root to: 'hugs#index'
  resources :huggers, only: [:show, :index]
  resources :users, only: [:show, :edit, :update]
  resources :bookings, only: [:index, :show]
  resources :hugs, only: [:index, :show] do
    resources :bookings, only: [:new, :create]
  end
  namespace :hugger do
    resources :hugs do
      resources :bookings, only: [:edit, :update]
    end
  end
end
