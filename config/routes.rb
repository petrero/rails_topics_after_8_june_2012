RailsTopicsAfter8June2012::Application.routes.draw do
  root to: 'products#index'
  resources :products do
		collection do
			put :discontinue
		end
	end
end
