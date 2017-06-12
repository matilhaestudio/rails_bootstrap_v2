Rails.application.routes.draw do
  devise_for :users
 	#root "pages#home", as: 'home'
	devise_for :users
	
	devise_scope :user do
		root "devise/sessions#new"
  	end
end
