Rails.application.routes.draw do

  devise_for :students, path: 's'
devise_for :teachers, path: 't'
  devise_for :users

  root to: 'pages#home'

  get '/dashboard', to: 'teachers#dashboard'
  get '/dashboard_student', to: 'students#dashboard_student'
  get '/show_student', to: 'students#show'

  resources :formations
  resources :lessons

end
