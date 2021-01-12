Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'sessions#new'
  get '/hello', to: "application#hello"
  post '/logout', to: "sessions#destroy"
  get '/secrets', to: "secrets#show"
  
  resources :sessions, only: [:new, :create]
end
