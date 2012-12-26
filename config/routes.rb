Pm::Application.routes.draw do
  resources :assignments
  resources :categorizations
  resources :comments
  resources :tags
  resources :tasks
  resources :users
end
