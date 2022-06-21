Rails.application.routes.draw do
  root "pins#index"
  resources :pins
  # get "pins/new", to: "pins#delete"
  # # devise_for :users
  devise_for :users
  resources :users
  # get "users/:id", to: "users#delete", as: "delete_user"
  # get "pins/new", to: "pins#new"
  # get "pins/:id", to: "pins#show", as: "show_pin"
  # get "pins/:id/edit", to: "pins#edit", as: "edit_pin"
  #
  # post "pins/", to: "pins#create"
  # patch "pins/:id", to: "pins#update", as: "pin"
  # delete "pins/:id", to: "pins#destroy", as: "delete_pin"
end
