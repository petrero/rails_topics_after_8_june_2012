RailsTopicsAfter8June2012::Application.routes.draw do
  resources :snippets
  root to: "snippets#new"
end
