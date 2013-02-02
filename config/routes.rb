Project::Application.routes.draw do

  resources :causes

  resources :donations

  resources :organizations

  resources :products
  root :to => 'products#index'
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}
end
