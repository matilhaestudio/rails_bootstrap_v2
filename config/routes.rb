Rails.application.routes.draw do
 	root "pages#home", as: 'home'
	devise_for :users
end
