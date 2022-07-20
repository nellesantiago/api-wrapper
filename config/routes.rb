Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "home#index"

  resources :films, only: %i[index show]
  resources :characters, only: %i[index show]
  resources :locations, only: %i[index show]
  resources :species, only: %i[index show]
end
