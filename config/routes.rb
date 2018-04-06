Rails.application.routes.draw do
  devise_for :admins

  root 'humans#new'
  resources :humans, only: [:create]

  get 'backoffice' => 'backoffice#index'
end
