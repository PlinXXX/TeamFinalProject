Rails.application.routes.draw do
	root 'statistics#index'

	resources :charts, only: [] do
	  collection do
	    get 'sporters_by_age'
	  end
	end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
