Rails.application.routes.draw do
  namespace :admin do
      resources :cities
      resources :organizations

      root to: "cities#index"
    end
  resources :organizations

  root 'organizations#index'
end
