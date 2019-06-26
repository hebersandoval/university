Rails.application.routes.draw do
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root 'courses#index'

	# courses
	get 'courses/new', to: 'courses#new'

	# pages
	get 'about', to: 'pages#about'

	# students
	resources :students, expect: [:destroy]

end
