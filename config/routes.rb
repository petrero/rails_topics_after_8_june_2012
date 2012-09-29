RailsTopicsAfter8June2012::Application.routes.draw do
  get "products/index"

  resources :products
  root to: 'products#index'
end
