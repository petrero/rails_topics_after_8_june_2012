RailsTopicsAfter8June2012::Application.routes.draw do
  resources :articles
  root to: 'articles#index'

end
