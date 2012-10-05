RailsTopicsAfter8June2012::Application.routes.draw do
  
	%w[about privacy license].each do |page|
		get page, controller: "info", action: page
	end


  resources :products
  root to: 'products#index'
end
