Rails.application.routes.draw do
  get 'todos/index', to: 'todos#index', as: 'todos_index'
  get 'todos/:id', to: 'todos#show', as: 'todos_show'
  patch 'todos/:id', to: 'todos#update', as: 'todo'
  
  devise_for :users
  get 'tasks/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "tasks#index"

end
