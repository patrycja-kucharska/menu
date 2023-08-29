Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "entries#index"

  resources :entries do
    put "presence", to: "entries#update_presence"
  end

  resources :recipes


end
