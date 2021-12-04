Rails.application.routes.draw do
  get 'home/index'
  post 'like/:tweet_id', to: 'likes#create', as: 'likebutton'
  devise_for :users, controllers: { sessions: 'users/sessions' }
  resources :tweets
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
