Rails.application.routes.draw do

  devise_for :students
  devise_for :teachers
  devise_for :users


    root to: 'pages#home'



  get 'formations/show'
  get 'formations/index'
  get 'formations/edit'
  get 'formations/update'
  get 'formations/create'
  get 'formations/new'
  get 'formations/destroy'
  get '/dashboard', to: 'teachers#dashboard'

  resources :formations

end
