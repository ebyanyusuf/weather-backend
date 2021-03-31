Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :locations
  get '/user-location/:id', to: 'locations#user_location'
  get '/location/:zip', to: 'locations#location_by_zip'

  resources :weathers
  resources :users
  resources :activities

end
