Rails.application.routes.draw do
  devise_for :users
  root to: "sneakers#index"
  resources :sneakers, only: [:index, :show, :new, :create] do
    resources :offers, only: [:new, :create]
  end
  resources :offers, only: [:show, :index, :edit, :update]
  get "/dashboard", to: "pages#dashboard", as: :dashboard
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
