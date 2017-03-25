Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :posts

  get "portfolio", to: "pages#portfolio"
  get "services", to: "pages#services"

  get "hire-me", to: "pages#hire"
  get "get-in-touch", to: "pages#contact"
  root "pages#index"
end
