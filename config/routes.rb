Rails.application.routes.draw do
  devise_for :users
  root to: "flats#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :flats, only: [:new, :show, :create, :index] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:edit, :update, :show]

  get '/user_bookings', to: 'bookings#user_bookings'
end
