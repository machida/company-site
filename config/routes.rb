CompanySite::Application.routes.draw do
  mount Nkss::Engine => '/styleguides' if Rails.env.development?
  namespace :staffs do
    root 'home#index'
    resources :pages
    resources :articles
    resources :categories
    resources :snippets
    resources :staffs
    resources :sites
    resources :services
    resources :contacts
    resources :attached_images
  end
  devise_for :staffs, :controllers => { :sessions => "staffs/sessions" }
  resources :snippets
  resources :pages
  resources :articles do
    get 'page/:page', :action => :index, :on => :collection
  end
  resources :categories do
    get 'page/:page', :action => :show, :on => :collection
  end
  resources :members
  resources :services
  resources :attached_images
  get 'tags/:tag', to: 'articles#index', as: :tag
  get 'archives', :controller => 'archives', :action => 'index'
  get 'archives/:year/:month/:day', :controller => 'archives', :action => 'show'
  get 'archives/:year/:month', :controller => 'archives', :action => 'show'
  get 'archives/:year', :controller => 'archives', :action => 'show'
  get 'contact' => 'contact#new'
  post 'contact' => 'contact#create'
  root 'home#index'
end
