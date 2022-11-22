Rails.application.routes.draw do
  root to: "pages#home"

    resources :grannies, only:[:index, :show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_for :views
  devise_for :users
end
