Rails.application.routes.draw do
  devise_for :admins

<<<<<<< HEAD
  root 'humans#new'
=======
  authenticated :admin do
    root 'backoffice#index', as: :authenticated_root
  end

  unauthenticated :admin do
     root 'humans#new', as: :unauthenticated_root
  end

  
>>>>>>> bafec538ac0a42f75f0683696cb0061b19612782
  resources :humans, only: [:create]

  get 'backoffice' => 'backoffice#index'

end
