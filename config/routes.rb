Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  resources :articles
  resources :events
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
