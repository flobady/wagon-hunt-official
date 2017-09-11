Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  devise_for :users
  root to: 'pages#home'

  get "/team" => "pages#team"
  get "/contact" => "pages#join_us"

  resources :products
  resources :upvotes, only: [ :create, :destroy ]
  resources :messages, only: [ :create, :index, :show, :new ]

  # Read action routes
  # get "/messages"     => "messages#index"
  # get "/messages/:id" => "messages#show"
  # get "/messages/new" => "messages#new"
  # post "/messages"    => "messages#create"



  # # Read action routes
  # get "/products" => "products#index"
  # get "/products/:id" => "products#show"

  # # Create action routes
  # get "/products/new" => "products#new" #affficher le formulaire à remplir
  # post "/products" => "products#create"

  # # Update action routes
  # get "/products/:id/edit" => "products#edit"
  # patch "/products/:id" => "products#update"

  # # Delete action routes
  # delete "/products/:id" => "products#destroy"





  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
