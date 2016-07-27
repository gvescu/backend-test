Rails.application.routes.draw do

  root 'main#index'

  # LOGIN/LOGOUT/RECOVERY
  get '/login' => 'sessions#new', as: :new_login
  post '/login' => 'sessions#create', as: :login
  get '/logout' => 'sessions#destroy', as: :logout
  get '/register' => 'users#new', as: :new_register
  post '/register' => 'users#create', as: :register
  # TODO: Recuperar contraseña

end
