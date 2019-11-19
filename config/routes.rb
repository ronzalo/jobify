Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :favorite_jobs
    end
  end
end
