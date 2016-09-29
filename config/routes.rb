Rails.application.routes.draw do
  ##---------SIMPLE REQUESTS---------------------------------------
    #get 'welcome/index'
    #get 'sessions/new'
    #get 'sessions/create'
    #get 'sessions/destroy' 
    get 'bridge_helper/get_dependencies'
    #get 'get_dependencies', to:'welcome#get_dependencies'
    #get "goin" => "welcome#index"
    #get 'reports/index'
    get 'reports/index'
    get 'admins/index'
    get "/login" => "sessions#new", as: "login"
    delete "/logout" => "sessions#destroy", as: "logout"
    #get "repo" => "reports#index"
    root to: 'welcome#index'
  ##----------RESOURSES-ADVANCED-----------------------------------
    resources :providers
    resources :brand_models
    resources :officevs
    resources :osies
    resources :hardds
    resources :memos
    resources :computer_brands
    resources :processors
    resources :screens do
        collection do
            get 'get_models', to:'screens#get_models'
        end
    end
    resources :consumables
    resources :copiers
    resources :printers
    resources :networks
    resources :powers
    resources :dependencies
    resources :telephones
    resources :computers
    resources :sessions, only: [:new, :create, :destroy]
    resources :workers  
    # do
    #   collection do
    #     get 'get_dependencies', to:'workers#get_dependencies'
    #   end
    # end
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
