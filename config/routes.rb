RailsTopicsAfter8June2012::Application.routes.draw do
  get "categories/show"

  get "categories/index"

  get "categories/new"

  get "products/show"

  get "products/index"

  get "products/new"

  resources :categories
  resources :products
  root to: 'products#index'
end
