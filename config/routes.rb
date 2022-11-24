Rails.application.routes.draw do
  root to: "pages#home"
    resources :grannies, only:[:index, :show, :new, :create] do
      resources :bookings, only:[:new, :create, :edit, :update] do
        member do
          patch :accept
          put :accept
          patch :reject
        end
      end
    end
    resources :bookings, only:[:index, :show]
  devise_for :views
  devise_for :users
end
