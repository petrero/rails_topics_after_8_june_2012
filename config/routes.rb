RailsTopicsAfter8June2012::Application.routes.draw do
  get "products/index"

  get "products/show"

  get "products/new"

  get "products/edit"

  resources :products
  root to: 'products#index'
end
