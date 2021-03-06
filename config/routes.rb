Rails.application.routes.draw do
  resources :user_courses
  resources :locations, only:[:index, :show]
  resources :reviews, except: [:index]
  resources :courses, only:[:index, :show]
  resources :users
  get "/login" , to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout" , to: "sessions#logout"
  get "/home" , to: "locations#home"
  get "/about" , to: "sessions#about"

end
