Rails.application.routes.draw do
  resources :projects
  resources :workers
  root to: "projects#index"
  post 'assigned_projects/:project_id', to: "assigned_projects#create", as: 'assigned_projects'
  delete 'assigned_projects/:worker_id/:project_id', to: "assigned_projects#destroy", as: 'remove_worker'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
