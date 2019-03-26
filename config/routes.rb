Rails.application.routes.draw do
  root 'items#index'
  resources :signup, only: [:new]

end
