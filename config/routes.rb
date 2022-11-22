Rails.application.routes.draw do
  root to: "pages#index"
  resources :pages
  devise_for :views
  devise_for :users


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

end
