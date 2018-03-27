Rails.application.routes.draw do
  resources :humans

  get "Thank you", to: 'form#goodbyescreen', as: "goodbyescreen"
  get "participantes", to: 'humans#index', as: "participantes"
  get "formulario", to: 'form#new', as: "form"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'form#new'
end
