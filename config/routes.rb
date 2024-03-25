Rails.application.routes.draw do
  root "client/dashboard#index"

  scope module: "client", path: "", as: "" do
    resources :posts, only: :show
  end
end
