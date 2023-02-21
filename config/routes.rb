Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get "/tasks", to: "tasks#index"

  # CREATE - add a new task
  get "/tasks/new", to: "tasks#new", as: :new
  post "/tasks/", to: "tasks#create"

  # READ - view details on one task
  get "/tasks/:id", to: "tasks#show", as: :task

  # UPDATE
  get "/tasks/:id/edit", to: "tasks#edit", as: :edit
  patch "/tasks/:id", to: "tasks#update"

  # DELETE
  delete "/tasks/:id", to: "tasks#destroy", as: :destroy


  # resources :tasks
end
