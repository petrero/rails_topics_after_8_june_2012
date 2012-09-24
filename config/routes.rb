RailsTopicsAfter8June2012::Application.routes.draw do
  resources :categories
  resources :products do
		member do
			get :delete
			delete :delete, action: :destroy
    end
	end
  root to: 'products#index'
end
