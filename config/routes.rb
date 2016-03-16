Rails.application.routes.draw do

  #good for static pages
  get 'publics/index'
  #test: we puposely tell the controller to redirect to index
  get 'publics/other'

  #the public folder will get searched first for static pages
  #if no routes match files in public folder, it will look at routes.rb

  #short version of a simple route
  #---------------
  #what this does is the request 'users/new' will turn to 'users#new'
  #get 'users/new'
  #get 'users/show'
  #get 'users/index'
  #post 'users/create'

  #long version
  #---------------
  #match 'users/new', :to => "users#new" :via => :get
  #match 'users/show', :to => "users#show" :via => :get
  #match 'users/index', :to => "users#index" :via => :get

  ############################
  #best way and shortest way
  #---------------
  #recommended for models
  #use long versions for non-model approach
  #it does all the routing for models listed (CRUD)
  resources :users


  #Root
  #---------------
  #when nothing matches go to root
  root 'publics#index'



  #default route
  #---------------
  #not best practice anymore but you can still use
  #when nothing or only the controller is provided
  #which should be the last in this file
  #parenthesis mean mean action and id are optional
  #match ':controller(/:action(/:id))', :via => :get

  #alternative default
  #---------------
  #incase you want to pass a json at the end
  #match ':controller(/:action(/:id(.:format)))', :via :get




  #Examples
  #------------------------------------------------------------------
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
