RailsTopicsAfter8June2012::Application.routes.draw do
  resources :tasks
  root to: 'tasks#index'
end
