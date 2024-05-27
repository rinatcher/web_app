Rails.application.routes.draw do
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root 'pages#index'

  get '/home', to: 'pages#index'
end
