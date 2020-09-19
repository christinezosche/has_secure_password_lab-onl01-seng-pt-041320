Rails.application.routes.draw do

  root "users#new"
  get "/login" => "users#login"
  post "/login" => "sessions#create"

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
