# frozen_string_literal: true

Rails.application.routes.draw do
  resources :carts
  root 'store#index', as: 'store_index'
  resources :products
  get 'say/hello'
  get 'say/goodbye'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
