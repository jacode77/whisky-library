Rails.application.routes.draw do
  get 'listings/index'
  get 'listings/show'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"
  get "/restricted", to: "pages#restricted"
  get "/listings", to: "listings#index"
end
