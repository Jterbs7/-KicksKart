Rails.application.routes.draw do
  devise_for :users
  root to: "sneakers#index"
  resources :sneakers, only: [:index, :show, :new, :create] do
    resources :offers, only: [:new, :create]
  end
  resources :offers, only: [:show, :index, :edit, :update] do
    member do
      put 'accept'
    end
  end
  get "/dashboard", to: "pages#dashboard", as: :dashboard
  get "/my_sneakers", to: "sneakers#my_sneakers", as: :my_sneakers
  # Defines the root path route ("/")
  # root "articles#index"
end
