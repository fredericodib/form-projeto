Rails.application.routes.draw do
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'form#new'
  get 'backoffice' => 'backoffice#index'
end
