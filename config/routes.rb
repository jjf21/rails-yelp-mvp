Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [:show, :index, :new, :create] do
    resources :reviews, only: [ :new, :create ]
  end

  namespace :admin do
    resources :restaurants, only: [:index, :show, :edit, :update, :destroy]
  end
end
