RailsTopicsAfter8June2012::Application.routes.draw do
  
  resources :pages, except: :show
  resources :products
  root to: 'products#index'

	get ':id', to: "pages#show", as: :page
end
