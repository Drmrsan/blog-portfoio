Rails.application.routes.draw do

	resources :posts
	get 'welcome/index'
	get 'welcome/about'
	get 'welcome/contact'
	
	root 'welcome#index'

	
end
