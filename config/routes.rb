Rails.application.routes.draw do
 
  resources :contents
  
  resources :courses
  
  root to: 'welcome#homepage'
  
  get 'welcome/homepage'

  resources :users
 
  get 'login', to: 'sessions#new'

  post 'login', to: 'sessions#create'

  delete 'logout', to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
