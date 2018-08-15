Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "/about" => "pages#about"

  get "/air" => "categories#air"
  get "/land" => "categories#land"
  get "/water" => "categories#water"
  get "/groups" => "categories#groups"

  resources :equipments, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:create]
  end

  resources :bookings, only: [:index]
end

