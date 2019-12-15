Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
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

  #top controller
  root 'top#index'
  get 'top/about', as: 'about'
  get 'login/select', to: 'top#login_select', as: 'login'
  get 'sign_up/select', to: 'top#sign_up_select', as: 'sign_up'

  #walkers controller
  get 'walkers/index'
  get 'walkers/show'

  #################### User
  #users/contacts controller
  namespace :users do
    get 'contacts/new'
    get 'contacts/create'
  #users/users controller
    get '/mypage', to: 'users#show', as: 'maypage'
    patch '/users', to: 'users#change'
  #users/partners controller
  resources :partners, except: [:show]
  #users/recruits controller
  resources :recruits, except: [:index]
  #users/recruits controller
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
    get 'contacts/create'
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
    get 'contacts/index'
    get 'contacts/show'
    get 'contacts/new'
    post 'contacts/create'
  #admins/review controller
    get 'review/index'
    get 'review/show'
    get 'review/destory'
  #admins/recruits controller
    get 'recruits/index'
    get 'recruits/show'
    get 'recruits/destroy'
  end
  ####################
end