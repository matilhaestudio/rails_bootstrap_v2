Rails.application.routes.draw do
 	#root "pages#home", as: 'home'
	devise_for :users
	
	devise_scope :user do
		root "devise/sessions#new"
  	end
end
