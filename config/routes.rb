Rails.application.routes.draw do
  apipie

  root to: "apipie/apipies#index"

  namespace :api do
    namespace :v1 do
      resources :favorite_jobs, only: [:index, :create, :show]
    end
  end
end
