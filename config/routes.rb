Rails.application.routes.draw do
resources :flights do 
  put :booking, on: :member
end

root to: "flights#index"
end
