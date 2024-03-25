Rails.application.routes.draw do
  require 'sidekiq/web'

  mount Ckeditor::Engine => "/ckeditor"
  mount Sidekiq::Web => "/sidekiq"

  root "client/dashboard#index"
  scope module: "client", path: "", as: "" do
    resources :posts, param: :slug, only: :show
  end

  namespace :admin do
    root "dashboard#index"
    devise_for :admins, path: "", path_names: { sign_in: "login", sign_out: "logout" }
    resources :posts, param: :slug
  end
end
