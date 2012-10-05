RailsTopicsAfter8June2012::Application.routes.draw do
  
  resources :pages

  resources :products
  root to: 'products#index'
end
