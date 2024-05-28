Rails.application.routes.draw do
  devise_for :users,
             controllers: { sessions: 'users/sessions' },
             path_names: { sign_out: 'logout' }

  root 'pages#index'

  get '/home', to: 'pages#index'
end
