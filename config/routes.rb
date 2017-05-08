Rails.application.routes.draw do
 
  resources :contents
  resources :courses
  resources :users
  resources :sessions
  resources :welcome

  root to: 'sessions#new'
  
  get 'welcome/homepage'
 
  get 'login', to: 'sessions#new'

  post 'login', to: 'sessions#create'

  delete 'logout', to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
