Rails.application.routes.draw do
	root 'landings#index'
  get 'landings/index'
  get 'landings/about'
  get 'landings/contact'

  resources :blogs
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
