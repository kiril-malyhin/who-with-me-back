Rails.application.routes.draw do
  resources :trips
  resources :users
  post '/user_auth' => 'users#user_auth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
