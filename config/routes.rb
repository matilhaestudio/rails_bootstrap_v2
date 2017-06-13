Rails.application.routes.draw do
  resources :samples
  devise_for :users
  root 'pages#index'
end
