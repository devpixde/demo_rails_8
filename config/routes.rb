Rails.application.routes.draw do
  resource :session
  resources :passwords, param: :token
  resources :people
  get "turboframeclocks/index"
  post "turboframetarget/index"
  get "turboframetarget/index"
  get "person_scaffold/index"
  get "person_scaffold/index"
  get "testing/index"
  resources :wolpertingers


  post "wolpertingers/toggle_walk"

  get "log_test/index"

  post "log_test/log"
  resources :pseudo_chats, only: [:index, :create]
  resources :image_examples
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html



  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"

  root "start#index"
  get "/cycle" => "cycle#index"
  get "/truncate" => "truncate#index"
  get "/striptags" => "striptags#index"

  # Stimuls Examples

  get "/stimulus_greeter" => "stimulus_greeter#index"
  get '/authenticate_and_cancancan' => 'authenticate_cancancan#index'
end
