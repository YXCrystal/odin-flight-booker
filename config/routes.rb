Rails.application.routes.draw do
resources :flights,only: [:index] do 
  resources :bookings, only: [:new, :create]
end

root to: "flights#index"
end
