Rails.application.routes.draw do
  root to: "pages#home"

  resources :grannies, only: [:show]
  devise_for :views
  devise_for :users
end
