Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#index'
  
  resources :subjects do
	resources :ratings
  end
  
  get '/loggedIn', to: 'pages#loggedIn', as: :loggedIn
end
