Rails.application.routes.draw do
  resources :books
  resources :trips
  resources :users
  post '/user_auth' => 'users#user_auth'
  post '/find_trip' => 'trips#find_trip'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
