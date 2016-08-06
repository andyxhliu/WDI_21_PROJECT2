Rails.application.routes.draw do 

  resources :events
  devise_for :users
  root "statics#homepage"
  get 'about', to: 'statics#about'
  get 'users/:id', to: 'users#show'

end
