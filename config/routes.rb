Rails.application.routes.draw do

  devise_for :students
  devise_for :teachers
  devise_for :users

    root to: 'pages#home'

  get '/dashboard', to: 'teachers#dashboard'
  get '/dashboard_student', to: 'students#dashboard_student'
  get '/show_student', to: 'students#show'

  resources :formations
  resources :lessons

end
