Rails.application.routes.draw do
 	#root "pages#home", as: 'home'
 	root "devise/sessions#new"
	devise_for :users
end
