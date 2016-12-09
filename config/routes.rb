Rails.application.routes.draw do
  root to: 'pages#home'

  namespace :admin do
    resources :moderators, only: [:index]
  end
end
