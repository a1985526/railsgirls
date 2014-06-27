Rails.application.routes.draw do
  devise_for :users
  resources :comments

  get 'pages/info'

  resources :ideas

  root to: redirect('/ideas')
  get '/hi', to:'ideas#hi' 

end
