Rails.application.routes.draw do

  devise_for :students
  devise_for :teachers
  devise_for :users

    root to: 'pages#home'

  get '/dashboard', to: 'teachers#dashboard'

  resources :formations
  resources :lessons

end
