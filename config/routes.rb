Rails.application.routes.draw do
  resources :users, only: [:new, :create, :edit, :update]
  root "articles#homepage"
  get "/admin", to: "admin#admin", as: :admin
  get "/users/login", to: "users#login", as: :login
  post "/users/authenticate", to: "users#authenticate", as: :authenticate_user
  get "/admin/articles", to: "admin#articles", as: :admin_articles
  get "/admin/users", to: "admin#users", as: :admin_users
  post "/articles/:id/publish", to: "articles#publish", as: :publish_article
  get "articles/:stub", to: "articles#show", as: :article
  get "articles", to: "articles#index", as: :articles
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
