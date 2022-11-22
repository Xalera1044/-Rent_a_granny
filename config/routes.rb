Rails.application.routes.draw do
  root to: "pages#home"

    resources :grannies, only:[:index, :show, :new, :create]

  devise_for :views
  devise_for :users
end
