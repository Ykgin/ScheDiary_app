Rails.application.routes.draw do
  devise_for :users
  root to: "schedules#index"
  resources :schedules
  resources :diaries, only:[:index, :create, :destroy]
  resources :users, only: :show
end
