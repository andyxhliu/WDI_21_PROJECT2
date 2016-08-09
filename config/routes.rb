Rails.application.routes.draw do 
  resources :tags
  resources :comments
  resources :groups
  resources :events
  devise_for :users
  root "statics#homepage"
  get 'about', to: 'statics#about'
  get 'users/:id', to: 'users#show', as: 'user'
  get '/events/:id/join', to: 'events#join', as: 'join'
  get '/groups/:id/join', to: 'groups#join', as: 'join_group'
end
