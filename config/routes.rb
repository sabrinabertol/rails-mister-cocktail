Rails.application.routes.draw do
root to: 'cocktails#index'
resources :cocktails, only: %i[new create index show] do
  resources :doses, only: %i[create]
end
resources :doses, only: :destroy
end
