Rails.application.routes.draw do
  root "lists#index"
  get "/lists", to: "lists#index"
  get "/lists/:id", to: "lists#show"
  post "/lists/new", to: "lists#create"
  post "/lists/:id/new", to: "lists#create_entry", as: 'create_entry'
  get "/api/v1/lists/:id", to: "api/v1/lists#get_list"
  get "/webhooks", to: "lists#webhooks"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
