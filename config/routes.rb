RailsTopicsAfter8June2012::Application.routes.draw do
  resources :orders
  root to: 'orders#index'
end
