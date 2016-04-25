Rails.application.routes.draw do
  
  devise_for :users
  root "menus#index"
  
  # Routes for the Menu Model
  # CREATE
  get "/menus/new",         {:controller => "menus", :action => "new",    :as => "new_menu"}
  post "/menus",             {:controller => "menus", :action => "create", :as => "menus"}  

  # READ
  get "/menus/:id",         {:controller => "menus", :action => "show", :as => "menu"}
  get "/menus",             {:controller => "menus", :action => "index"}
  

  # UPDATE
  get "/menus/:id/edit",    {:controller => "menus", :action => "edit",   :as => "edit_menu"}
  patch "/menus/:id",        {:controller => "menus", :action => "update"}

  # DELETE
  delete "/menus/:id",   {:controller => "menus", :action => "destroy"}
  
  #------------------------------------------------------------------------------------------
  
  # Routes for the Order Model
  # CREATE
  get "/orders/new",         {:controller => "orders", :action => "new",    :as => "new_order"}
  post "orders",             {:controller => "orders", :action => "create", :as => "orders"}  

  # READ
  get "/orders/:id",         {:controller => "orders", :action => "show", :as => "order"}
  get "/orders",             {:controller => "orders", :action => "index"}
  

  # UPDATE
  get "/orders/:id/edit",    {:controller => "orders", :action => "edit",   :as => "edit_order"}
  patch "/orders/:id",        {:controller => "orders", :action => "update"}

  # DELETE
  delete "/orders/:id",   {:controller => "orders", :action => "destroy"}
  
  #------------------------------------------------------------------------------------
  # Routes for the Review Model
  # CREATE
  get "/reviews/new",         {:controller => "reviews", :action => "new",    :as => "new_review"}
  post "/reviews",             {:controller => "reviews", :action => "create", :as => "reviews"}  

  # READ
  get "/reviews/:id",         {:controller => "reviews", :action => "show", :as => "review"}
  get "/reviews",             {:controller => "reviews", :action => "index"}
  

  # UPDATE
  get "/reviews/:id/edit",    {:controller => "reviews", :action => "edit",   :as => "edit_review"}
  patch "/reviews/:id",       {:controller => "reviews", :action => "update"}

  # DELETE
  delete "/reviews/:id",      {:controller => "reviews", :action => "destroy"}
  
  # Routes for the Order_Item Model
  # CREATE
  get "/order_items/new",         {:controller => "order_items", :action => "new",    :as => "new_order_item"}
  post "/order_items",             {:controller => "order_items", :action => "create", :as => "order_items"}  

  # READ
  get "/order_items/:id",         {:controller => "order_items", :action => "show", :as => "order_item"}
  get "/order_items",             {:controller => "order_items", :action => "index"}
  

  # UPDATE
  get "/order_items/:id/edit",    {:controller => "order_items", :action => "edit",   :as => "edit_order_item"}
  patch "/order_items/:id",       {:controller => "order_items", :action => "update"}

  # DELETE
  delete "/order_items/:id",      {:controller => "order_items", :action => "destroy"}
  
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

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
