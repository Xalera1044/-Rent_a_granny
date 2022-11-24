Rails.application.routes.draw do
  root to: "pages#home"
    get "dashboard", to: "pages#dashboard"
    resources :grannies, only:[:index, :show, :new, :create] do
      resources :bookings, only:[:new, :create]
    end
    resources :bookings, only:[:index, :show]
  devise_for :views
  devise_for :users
end
