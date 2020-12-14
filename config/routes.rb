Rails.application.routes.draw do
  namespace :admin do
      resources :cities
      resources :organizations

      root to: "cities#index"
    end
  resources :organizations
  get '/search', to: 'organizations#search'
  get '/o-nama', to: 'website#about'
  get '/polica-privatnosti', to: 'website#privacy_policy'

  root 'organizations#index'


  # This has to be on the bottom
  match '*path' => redirect('/'), via: :get
end
