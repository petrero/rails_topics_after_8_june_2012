RailsTopicsAfter8June2012::Application.routes.draw do
  get "info/about"
  resources :products
  root to: 'products#index'
end
