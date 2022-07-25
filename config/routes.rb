Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "home#index"

  resources :films, only: %i[index]
  resources :characters, only: %i[index]
  resources :locations, only: %i[index]
  resources :species, only: %i[index]
end
