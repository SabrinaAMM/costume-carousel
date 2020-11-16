Rails.application.routes.draw do
  root to: 'pages#home'
  resources :costumes, only: [:index, :show, :new, :create, :destroy] do
    resources :bookings, only: [:new, :create, :edit, :update]
  end
  resources :booking, only: [:destroy]
  resources :dashboard, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
