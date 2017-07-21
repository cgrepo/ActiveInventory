Rails.application.routes.draw do
  root to: 'welcome#index'
  get 'reports/index'
  get 'admins/index'
  get "/login" => "sessions#new", as: "login"
  get '/printers/showmodal' => 'printers#showmodal'
  delete "/logout" => "sessions#destroy", as: "logout"
  resources :scanners, :equipment_logs, :common_errors, :providers, :consumables, :copiers
  resources :printers, :networks, :powers, :dependencies, :telephones, :memos, :processors
  resources :computers, :officevs, :osies, :hardds, :workers, :screens
  resources :sessions, only: [:new, :create, :destroy]
  resources :brand_models do
    collection do
      get 'addBrandModel', to: 'brand_models#addBrandModel'
    end
  end
  resources :bridge_helper, only: [:get_models, :get_dependencies] do
    collection do
      get 'get_models', to:'bridge_helper#get_models'
      get 'get_dependencies', to:'bridge_helper#get_dependencies'
    end
  end
  resources :service_requests do
    collection do
      get 'get_dependencies', to:'service_requests#get_dependencies'
      get 'get_equipments', to:'service_requests#get_equipments'
    end
    get 'get_pdf', to:'service_requests#get_pdf'
  end
  resources :statistics do
    collection do
      get 'get_dependencies', to:'statistics#get_dependencies'
      get 'get_equipments', to:'statistics#get_equipments'
    end
  end
  end
