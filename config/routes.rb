Pm::Application.routes.draw do
  root :controller => 'static', :action => '/public/index.html'

  match 'auth/facebook/callback' => 'users#facebook_callback'
  match 'me' => 'users#me'
  match 'logout' => 'users#logout'

  resources :assignments
  resources :categorizations
  resources :comments
  resources :tags
  resources :tasks
  resources :users
end
