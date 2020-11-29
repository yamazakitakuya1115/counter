Rails.application.routes.draw do
  resources :counts, only: [:index, :create]
  root to: 'counts#index'
end
