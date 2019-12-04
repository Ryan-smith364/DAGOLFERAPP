Rails.application.routes.draw do
  resources :locations, only:[:index, :show]
  resources :reviews, except: [:index]
  resources :courses, only:[:index, :show]
  resources :users
end
