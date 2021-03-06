Rails.application.routes.draw do
  resources :examples
  root to: "pages#index"
  get 'pages/index'
  get '/auth/:provider/callback', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  resources :interactions

  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
