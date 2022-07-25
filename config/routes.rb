Rails.application.routes.draw do
  resources :recipes, only: [:index, :create]

  # Sessions controller routes
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  #User controller routes
  post "/signup", to: "users#create"
  get "/me", to: "users#show"
end
