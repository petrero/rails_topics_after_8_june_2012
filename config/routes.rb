RailsTopicsAfter8June2012::Application.routes.draw do
  root to: 'articles#index'
  resources :comments
  resources :articles
end
