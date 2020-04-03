Rails.application.routes.draw do

  devise_for :students, path: 's'
  devise_for :teachers, path: 't'
  devise_for :users

  root to: 'pages#home'

  get '/dashboard', to: 'teachers#dashboard', as: :teacher_root
  get '/dashboard_student', to: 'students#dashboard_student', as: :student_root
  get 'formations/:id/show_student', to: 'students#show', as: :student_show

  resources :formations
  resources :lessons

end
