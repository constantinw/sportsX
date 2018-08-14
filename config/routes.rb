Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :equipments, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:create, :index]
  end
end

