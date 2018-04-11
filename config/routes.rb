Rails.application.routes.draw do

  resources :requests, only: [:new, :create]
  devise_for :admins
  root to: "user/home#index"

  # resources :reports
  # resources :newsletters
  devise_for :reporters
  resources :suscriptions, only:[:new, :create]
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/reporter', to: 'reporter/application#index'
  get '/quienes-somos', to: 'application#about'
  get '/contacto', to: 'application#contact'
  get '/noticias', to: 'application#reports'
  get '/admin', to: 'admin/application#index'
  get '/user', to: 'user/home#index'
  get '/admin/search', to: 'admin/application#search'




  namespace :admin do
    resources :biddings
    resources :projects
    resources :businesses
    resources :categories
    resources :project_temps
    resources :bidding_temps
    resources :requests, only:[:show, :index, :destroy]
    resources :sectors

  end

  namespace :user do
    resources :project_temps, only:[:show, :index]
    resources :bidding_temps, only:[:show, :index]
    resources :projects, only:[:show, :index]
    resources :proveedors

  end

  namespace :reporter do
    resources :suscriptions, only:[:show, :index]
    resources :reports
    resources :newsletters do
      member do
        put :send_by_email
      end
    end
  end

end
