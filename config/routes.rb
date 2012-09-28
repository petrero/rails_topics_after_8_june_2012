RailsTopicsAfter8June2012::Application.routes.draw do
  get "orders/new"

  get "orders/create"

  resources :orders
  root to: 'orders#new'
end
