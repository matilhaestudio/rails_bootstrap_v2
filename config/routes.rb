Rails.application.routes.draw do
  resources :examples
  resources :samples
  devise_for :users
  root 'pages#index'
end
