Rails.application.routes.draw do
  root to: "pages#home"
    get "dashboard", to: "pages#dashboard"
    resources :grannies, only:[:index, :show, :new, :create] do
      resources :bookings, only:[:new, :create, :edit]
    end
    resources :bookings, only:[:index, :show]
    patch "bookings/:id/accept", to: "bookings#accept", as: :booking_accept
    patch "bookings/:id/reject", to:"bookings#reject", as: :booking_reject
  devise_for :views
  devise_for :users
end
