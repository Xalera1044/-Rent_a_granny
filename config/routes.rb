Rails.application.routes.draw do
  root to: "grannies#index"
  resources :grannies, only: :index
  devise_for :views
  devise_for :users
end
