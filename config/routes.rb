Rails.application.routes.draw do
  resources :hours_and_locations
  # get '/hours_and_location', to: 'hours_and_locations#index'
  get '/home', to: 'static_pages#home'

  get '/about', to: 'static_pages#about'

  get '/hours_and_location', to: 'hours_and_locations#show_webbroswer_hours'

  root 'static_pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
