Rails.application.routes.draw do
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
  get 'login/select', to: 'top#login_select', as: 'login'
  get 'sign_up/select', to: 'top#sign_up_select', as: 'sign_up'
  #walkers controller
  resources :walkers, only:[:index, :show]
  #rooms controller
  resources :rooms, :only => [:create, :show, :index]
  #messages controler
  resources :messages, :only => [:create]
  ####################

  #################### User
  namespace :users do
  #users/contacts controller
    resources :contacts, only: [:new, :create]
  #users/users controller
    resources :users, only: [:show]
  #users/partners controller
    resources :partners, except: [:show]
  #users/recruits controller
    resources :recruits, except: [:index]
    patch '/recruits/confirm/:id', to: 'recruits#confirm', as: 'confirm'
  #users/reviews  controller
    resources :reviews, except: [:index]
  end
  ####################
  
  #################### Walker
  namespace :walkers do
  #walkers/walkers controller
    get 'walkers/index'
    patch 'walkers/change'
  #walkers/contacts contller
    get 'contacts/new'
    post 'contacts/create'
  #walkers/recruits contlloer
    get 'recruits/index'
    patch 'recruits/status/:id', to: 'recruits#status', as: 'recruits_status'
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
    resources :contacts, onry: [:index, :show, :new, :create]
  #admins/review controller
    resources :reviews, onry: [:index, :show, :destory]
  #admins/recruits controller
    resources :recruits, onry: [:index, :show, :destory]
    end
  ####################

end