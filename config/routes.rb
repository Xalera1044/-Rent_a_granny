Rails.application.routes.draw do
  root to: "grannies#index"
  resources :grannies, only: :index
  devise_for :views
  devise_for :users
<<<<<<< HEAD
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :grannies, only: [:show]
=======
>>>>>>> master
end
