Rails.application.routes.draw do
  resources :articles
	root 'landings#index'
  get 'landings/index'
  get 'landings/about'
  get 'landings/contact'

  resources :blogs
  resources :products
  resources :images
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
