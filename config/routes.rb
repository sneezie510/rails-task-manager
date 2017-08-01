# Rails.application.routes.draw do
#   get 'tasks', to: 'tasks#index'

#   get 'tasks/:id', to: 'tasks#show'

#   get 'tasks/new', to: "tasks#show"

# # Create one restaurant (C)
# # First request, get the form
#   get 'tasks/new',to: 'tasks#new'
#   post 'tasks', to: 'tasks#create'

# # # Update one restaurant (U)
# # # First request: get the prefilled form
#   get 'tasks/:id/edit', to: 'tasks#edit'
# # Second request: updating the information in the database
#   patch  'tasks/:id', to: 'tasks#update'

#   delete 'tasks/:id', to: 'tasks#destroy'
# end

Rails.application.routes.draw do
  resources :tasks
end
