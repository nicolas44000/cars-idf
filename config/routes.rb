Rails.application.routes.draw do
  root 'pages#index'
  resources :pages, only: [:index, :new, :create]
  get 'pages/mention_cookies'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
