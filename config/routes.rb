Rails.application.routes.draw do

  root to: 'pages#home'

  get '/login' => 'admin/sessions#new'

  namespace :admin do
    resources :sessions, only: [:new, :create, :destroy]
    resources :moderators, only: [:index, :edit, :update]
  end
end
