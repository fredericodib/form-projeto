Rails.application.routes.draw do

  resources :humans

  get "erro", to: 'form#errorscreen', as: "errorscreen"
  get "Thank you", to: 'form#goodbyescreen', as: "goodbyescreen"
  get "participantes", to: 'humans#index', as: "participantes"
  

  devise_for :admins

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'form#new'
  get 'backoffice' => 'backoffice#index'
end
