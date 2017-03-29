Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  resources :articles
  resources :events
  root to: 'visitors#index'
  devise_for :users
  resources :users
  resources :courses
  resources :quizzes do
    resources :the_questions
  end
  resources :take_quizzes do
    get 'take', to: 'take_quizzes#take'
  end
end
