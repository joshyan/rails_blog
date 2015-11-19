Rails.application.routes.draw do
  get 'welcome/index'

  #post routers
  get "post", to: "post#index"
  get "post/:id/show", to: "post#show"
  get "post/new"
  post "post/create", to: "post#create"
  get "post/:id/edit", to: "post#edit"
  patch "post/:id/update", to: "post#update"
  get "post/:id/destroy", to: "post#destroy"
  #restful
  patch "post/:id", to: "post#update"
  delete "post/:id", to: "post#destroy"


  #category routers
  get "category", to: "category#index"
  get "category/:id/show", to: "category#show"
  get "category/new"
  post "category/create", to: "category#create"
  get "category/:id/edit", to: "category#edit"
  patch "category/:id/update", to: "category#update"
  get "category/:id/destroy", to: "category#destroy"
  #restful
  patch "category/:id", to: "category#update"
  delete "category/:id", to: "category#destroy"



  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

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
