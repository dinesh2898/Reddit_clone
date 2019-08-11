Rails.application.routes.draw do
  #devise_for :users
  devise_for :users do
  	get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :links do
  	member do
  		get "like", to: "links#upvote"
  		get "dislike", to: "links#downvote"
  	end
  end

  root to: "links#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
