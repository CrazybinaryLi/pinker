Rails.application.routes.draw do
  get 'sessions/new'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "index#index"
  get '/signup', to: 'index#signup'
<<<<<<< HEAD
=======

>>>>>>> f4219585ae167ffab65ca77a4b57850f217a2740
  post '/upload', to: 'drivers#upload'
  get '/show', to: 'drivers#show'
  get '/edit', to: 'drivers#edit'
  
  get '/to_take_order', to: 'drivers#to_take_order'
  get '/taken_order', to: 'drivers#taken_order'
  get '/finished_order', to: 'drivers#finished_order'
  
<<<<<<< HEAD
  
  post '/upload', to: 'driver#upload'

=======
  post '/upload', to: "driver#upload"
>>>>>>> f4219585ae167ffab65ca77a4b57850f217a2740
  get '/login', to: "sessions#new"
  post '/login', to: 'sessions#create'
  #delete  '/logout', to: 'sessions#destroy'
 
  get '/order' , to: 'students#new_order'
  post '/order', to: 'students#create_order'
  get '/orders', to: 'index#orders'
  
  
  
  resources :drivers
  resources :students
  resources :managers
  
end 
