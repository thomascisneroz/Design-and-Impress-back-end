Rails.application.routes.draw do
  resources :hobbies
  resources :requests
  resources :reviews
  resources :hwsaas
  resources :users 
  post "/signup", to: 'users#create'
  post "/login", to: 'sessions#create'
  delete "/logout", to:'sessions#destroy'
  post "/comments", to: 'requests#create'
  delete "/comments", to:'requests#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
