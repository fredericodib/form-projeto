Rails.application.routes.draw do
  devise_for :admins

  authenticated :admin do
    root 'backoffice#index', as: :authenticated_root
  end

  unauthenticated :admin do
     root 'humans#new', as: :unauthenticated_root
  end

  
  resources :humans, only: [:create]

  get 'backoffice' => 'backoffice#index'

end
