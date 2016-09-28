Rails.application.routes.draw do
  

  resources :service_requests do
    collection do
      get 'get_dependencies', to:'service_requests#get_dependencies'
      get 'get_equipments', to:'service_requests#get_equipments'
    end
    get 'get_pdf', to:'service_requests#get_pdf'
  end
  
  resources :workers  do
    collection do
      get 'get_dependencies', to:'workers#get_dependencies'
    end
  end
  

  resources :providers
  get 'reports/index'

  resources :brand_models
  resources :officevs
  resources :osies
  resources :hardds
  resources :memos
  resources :computer_brands
  get 'admins/index'

  resources :processors
  resources :screens
  get 'reports/index'

  resources :consumables
  resources :statistics
  resources :copiers
  resources :printers
  resources :networks

  resources :powers
  resources :dependencies
  resources :telephones
  resources :computers
  #get 'welcome/index'
  #get 'sessions/new'
  #get 'sessions/create'
  #get 'sessions/destroy'
  get 'get_dependencies', to:'welcome#get_dependencies'
  get "goin" => "welcome#index"
  root to: 'welcome#index'
  resources :sessions, only: [:new, :create, :destroy]
  get "/login" => "sessions#new", as: "login"
  delete "/logout" => "sessions#destroy", as: "logout"
  get "repo" => "reports#index"
end
