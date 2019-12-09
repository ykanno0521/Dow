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
  get 'top/index'
  get 'top/about'

  #walkers controller
  get 'walkers/index'
  get 'walkers/show'

  #users/contacts controller
  namespace :users do
    get 'contacts/new'
    get 'contacts/create'
  end

  #users/users controller
  namespace :users do
    get '/mypage', to: 'users#show'
    patch '/users', to: 'users#change'
  end

  #users/partners controller
  resources :partners, except: [:show]

  #users/recruits controller
  resources :recruits, except: [:index]

  #users/reviews controller
  resources :reviews, except: [:index]

  #walkers/walkers controller
  namespace :walkers do
    get 'walkers/index'
    patch 'walkers/change'
  end

  #walkers/contacts contller
  namespace :walkers do
    get 'contacts/new'
    get 'contacts/create'
  end

  #walkers/recruits contlloer
  namespace :walkers do
    get 'recruits/index'
    get 'recruits/show'
    get 'recruits/reaction'
  end

  #admins/users controller
  resources :recruits, except: [:show]

  #admins/walkers controller
  resources :recruits, except: [:new, :create]

  #admins/contacts controller
  namespace :admins do
    get 'contacts/index'
    get 'contacts/show'
    get 'contacts/new'
    get 'contacts/create'
  end
  #admins/review controller
  namespace :admins do
    get 'review/index'
    get 'review/show'
    get 'review/destory'
  end
  #admins/recruits controller
  namespace :admins do
    get 'recruits/index'
    get 'recruits/show'
    get 'recruits/destroy'
  end

end