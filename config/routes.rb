Rails.application.routes.draw do
  root "home#index"

  devise_for :users
  get "persons/profile", as: "user_root"
end
