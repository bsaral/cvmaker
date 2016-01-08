Cvmaker::Application.routes.draw do

  root :to => "home#index"
  get "sessions/new"
  resources :sessions, only: [:new, :create, :destroy]
  match "login" => "sessions#new",:as => "login"
  match "logout" => "sessions#destroy"
  
  
  resources :forms
  match "/form" => "forms#index"
  match "/forms/new" => "forms#new"
  match "/forms/:id/edit" => "forms#edit"
  match "/forms/:id" => "forms#show"
  match "/deneme" => "forms#deneme"
  
 

end
