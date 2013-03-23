RailsTopicsAfter8June2012::Application.routes.draw do

  root :to => 'users#index'
  resources :users
end
