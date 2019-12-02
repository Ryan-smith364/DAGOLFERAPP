Rails.application.routes.draw do
  resources :reviews, except: [:index]
  resources :courses, only:[:index, :show]
  resources :users
end
