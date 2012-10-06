RailsTopicsAfter8June2012::Application.routes.draw do
  resources :paintings
  root to: 'paintings#index'
end
