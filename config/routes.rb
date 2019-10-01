Rails.application.routes.draw do
  resources :tags
  resources :comments
  resources :answers
  resources :questions
  resources :users

  get '/login', to: 'auth#login', as: 'login'
  post '/login', to: 'auth#verify'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
