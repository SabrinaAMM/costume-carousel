Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :costumes, only: [:index, :show, :new, :create, :destroy] do
    resources :bookings, only: [:create, :edit, :update]
  end
  resources :bookings, only: [:destroy] do
     patch :accept, :reject
   end
  resources :dashboard, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
