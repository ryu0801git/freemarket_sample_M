Rails.application.routes.draw do
<<<<<<< HEAD
  root 'items#index'
=======
  resources :signup, only: [:new]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
>>>>>>> master
end
