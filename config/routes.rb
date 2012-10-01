RailsTopicsAfter8June2012::Application.routes.draw do
  resources :projects do
    resources :tasks
  end
  root to: 'projects#index'
end
