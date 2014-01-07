CompanySite::Application.routes.draw do
  mount Nkss::Engine => '/styleguides' if Rails.env.development?
  namespace :staffs do
    root 'home#index'
    resources :pages
    resources :articles
    resources :posts
    resources :categories
    resources :snippets
    resources :staffs
    resources :sites
  end
  devise_for :staffs
  resources :snippets
  resources :pages
  resources :articles
  resources :categories
  resources :members
  resources :services
  get 'month/:month_articles' => 'articles#month'
  get 'tags/:tag', to: 'articles#index', as: :tag
  root :to => 'home#index'
end
