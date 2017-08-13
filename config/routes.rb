Rails.application.routes.draw do
  root to: 'welcome#index'
  get 'reports/index'
  get 'admins/index'
  get "/login" => "sessions#new", as: "login"
  get '/printers/showmodal' => 'printers#showmodal'
  delete "/logout" => "sessions#destroy", as: "logout"
  resources :equipment_logs, :common_errors, :providers, :consumables
  resources :printers, :networks, :dependencies, :telephones, :memos
  resources :officevs, :osies, :hardds, :workers, :processors
  resources :sessions, only: [:new, :create, :destroy]
  resources :computers do
    collection do
      get 'showmodal', to: 'computers#showmodal'
      get 'addBrandModel4pc', to: 'computers#addBrandModel4pc'
    end
  end
  resources :powers do
    collection do
      get 'showmodal', to: 'powers#showmodal'
      get 'addBrandModel4pow', to: 'computers#addBrandModel4pow'
    end
  end
  resources :copiers do
    collection do
      get 'showmodal', to: 'powers#showmodal'
    end
  end
  resources :scanners do
    collection do
      get 'showmodal', to: 'scanners#showmodal'
    end
  end
  resources :screens do
    collection do
      get 'showmodal', to: 'screens#showmodal'
    end
  end
  resources :brand_models do
    collection do
      get 'addBrandModel', to: 'brand_models#addBrandModel'
    end
  end
  resources :bridge_helper, only: [:get_models, :get_dependencies] do
    collection do
      get 'get_models', to:'bridge_helper#get_models'
      get 'get_dependencies', to:'bridge_helper#get_dependencies'
      get 'showmodal', to:'bridge_helper#showmodal'
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
