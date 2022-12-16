Rails.application.routes.draw do
  devise_for :users
  root to: "flats#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :flats, only: [:new, :show, :create, :index] do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: [:edit, :update, :show] do
    member do
      get :accept, :deny
    end
  end

  resources :users
  get '/user_bookings', to: 'bookings#user_bookings'
end

# route for bookings owner accept
# controller edit
