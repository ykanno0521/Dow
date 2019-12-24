Rails.application.routes.draw do
  get 'contacts/new'
  get 'contacts/create'
  post '/rate' => 'rater#create', :as => 'rate'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #####################デバイス関連
  devise_for :users, controllers:{
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  devise_for :walkers, controllers:{
    sessions: 'walkers/sessions',
    registrations: 'walkers/registrations'
  }
  devise_for :admins, controllers:{
    sessions: 'admins/sessions'
  }
  devise_scope :user do
    get 'users/unsubscribe', to: 'users/registrations#unsubscribe'
    get 'users/unsubscribe/complete', to: 'users/registrations#complete'
  end
  devise_scope :walker do
    get 'walkers/unsubscribe', to: 'walkers/registrations#unsubscribe'
    get 'walkers/unsubscribe/complete', to: 'walkers/registrations#complete'
  end
  ####################

  ####################共通
  #top controller
  root 'top#index'
  get 'top/about', as: 'about'
  #walkers controller
  resources :walkers, only:[:index,:show]
  #rooms controller
  resources :rooms, :only => [:create, :show, :index]
  #messages controler
  resources :messages, :only => [:create]
  #contacts controler
  resources :contacts, :only => [:new , :create]
  ####################



  #################### User
  namespace :users do
  #users/users controller
    resources :users, only: [:show]
  #users/partners controller
    resources :partners, except: [:show]
    patch '/users', to: 'users#change', as: 'change'
  #users/recruits controller
    patch '/recruits/confirm/:id', to: 'recruits#confirm', as: 'confirm'
    resources :recruits, except: [:index] do
      resources :reviews
    end
  #users/reviews  controller
    # resources :reviews
  end
  ####################
  
  #################### Walker
  namespace :walkers do
  #walkers/walkers controller
    resources :walkers, only: [:show]
    patch 'walkers/change', to: 'walkers#change', as: 'change'
  #walkers/recruits contlloer
    get '/recruits/index'
    post '/recruits', to: 'recruits#create'
    delete '/recruits/:id', to: 'recruits#destroy', as: "recruits_destroy"
    patch 'recruits/switch/:id', to: 'recruits#switch', as: 'recruits_switch'
    get 'recruits/:id', to: 'recruits#show', as: 'recruits_show'
  end
  ####################
 
  #################### Admin
  namespace :admins do
  #admins/users controller
    resources :users, except: [:new, :create]
  #admins/walkers controller
    resources :walkers, except: [:new, :create]
  #admins/contacts controller
    resources :contacts, onry: [:index, :show, :edit, :update]
  #admins/review controller
    resources :reviews, onry: [:index, :show, :destory]
  #admins/recruits controller
    resources :recruits, onry: [:index, :show, :destory]
    end
  ####################

end