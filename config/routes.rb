Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "/about" => "pages#about"

  resources :equipments, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:create]
  end
  resources :bookings, only: [:index]
end

