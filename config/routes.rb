Rails.application.routes.draw do
  resources :organizations

  root 'organizations#new'
end
