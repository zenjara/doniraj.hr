Rails.application.routes.draw do
  namespace :admin do
      resources :organizations
      resources :cities

      root to: "organizations#index"
    end
  resources :organizations

  root 'organizations#new'
end
