Rails.application.routes.draw do

  resources :restaurants do
    resources :reviews, only: [:new, :create]

    member do
      get :chef
    end

    collection do
      get :top
    end


  end

  resources :reviews, only: :destroy



end










