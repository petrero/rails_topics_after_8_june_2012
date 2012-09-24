RailsTopicsAfter8June2012::Application.routes.draw do
  resources :movies do
    resources :reviews
  end
  root to: 'movies#index'
end
