Rails.application.routes.draw do

  	get 'home/index'

  	root 'home#index'

	# Serve websocket cable requests in-process
	mount ActionCable.server => '/cable'

	resources :votes
end
