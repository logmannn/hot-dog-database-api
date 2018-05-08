Rails.application.routes.draw do
  resources :stores
  post 'auth/register', to: 'users#register'
end
