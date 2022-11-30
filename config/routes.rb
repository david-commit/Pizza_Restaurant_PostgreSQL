Rails.application.routes.draw do
  resources :restaurants, except: [:create]
  resources :pizzas, only: [:index]
  resources :restaurant_pizzas, only: [:create]
end
