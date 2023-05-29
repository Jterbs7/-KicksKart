Rails.application.routes.draw do
  get 'sneakers/index'
  get 'sneakers/show'
  get 'sneakers/create'
  get 'sneakers/new'
  devise_for :users
      root to: "pages#home"
      resources :sneakers, only: [:index, :show, :new, :create] do
        resources :offers, only: [:new, :create]
      end
      resources :offers, only: [:offers]
  get "/dashboard", to: "pages#dashboard", as: :dashboard
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
