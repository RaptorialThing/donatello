Rails.application.routes.draw do
  resources :author_posts
  resources :author_subscribers
  resources :subscribers
  resources :authors do
    resources :author_posts
  end
  devise_for :users
  get 'profile', to: 'profile#index'

  get :success_pay, to: 'author_subscribers#success_pay'
  get :error_pay, to: 'author_subscribers#error_pay'
  get :donate, to: 'author_subscribers#donate'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root "profile#index"
end
