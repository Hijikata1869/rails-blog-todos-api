Rails.application.routes.draw do
  namespace :api do
    resources :users, only: %i[create]
    post 'auth', to: 'auth#create'
  end
end
