Rails.application.routes.draw do
  namespace :api do
    resources :users, only: %i[create]
    resources :blogs, only: [:index, :show]
    resources :tasks, only: [:index, :show]
    post 'auth', to: 'auth#create'
  end
end
