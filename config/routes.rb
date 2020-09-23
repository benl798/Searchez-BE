Rails.application.routes.draw do
  resources :images
  post 'user_token' => 'user_token#create'

  get '/users/current' => 'users#current'

  get '/my_saved_images' => 'images#my_saved_images'
end
