AChieve::Application.routes.draw do
  
  devise_for :users
  resources :users, only: [:show]

  resources :videos, :only => [:destroy, :show, :edit, :update]
  resources :jobs do
    resources :videos, :only => [:create, :index, :new, :home_page]
    get "/new_job" => "jobs#new"
  end

  root :to => "jobs#home_page"

  post "/" => "jobs#index"

  get "/admin" => "jobs#admin"
  post "/admin" => "jobs#admin"

  get "/about_us" => "jobs#about_us"
  get "/partners" => "jobs#partners"

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
