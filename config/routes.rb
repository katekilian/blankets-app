Rails.application.routes.draw do

  root 'blankets#index'

  resources :blankets, only: [:index, :show, :new, :create, :edit, :update]

end
