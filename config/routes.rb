Rails.application.routes.draw do

  resources :students, only: [:show, :edit, :update, :create, :new]
  resources :school_classes, only: [:show, :edit, :update, :create, :new]
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
