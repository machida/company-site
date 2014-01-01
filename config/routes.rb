CompanySite::Application.routes.draw do
  mount Nkss::Engine => '/styleguides' if Rails.env.development?
  namespace :admin do
    root 'home#index'
    resources :pages
    resources :articles
    resources :posts
    resources :categories
    resources :authors
  end
  namespace :authors do
    root 'home#index'
    resources :pages
    resources :articles
    resources :posts
    resources :categories
    resources :authors
  end
  resources :admins
  devise_for :authors
  resources :snippets
  resources :pages
  resources :articles
  resources :categories
  get 'tags/:tag', to: 'articles#index', as: :tag
  root :to => 'home#index'
end
