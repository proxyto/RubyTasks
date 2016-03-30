Rails.application.routes.draw do
  get '/brands',to: 'brands#index'
  get '/brands/count',to: 'brands#count'
  get '/brands/:id',to: 'brands#show'
  get '/brands/range/:id/:count',to: 'brands#range_count'
  get '/brands/range/:id',to: 'brands#range'
  post '/brands/new' ,to: 'brands#create'
  delete '/brands/:id',to: 'brands#destroy'
  get '/categories',to: 'categories#index'
  get '/categories/count',to: 'categories#count'
  get '/categories/:id',to: 'categories#show'
  get '/categories/range/:id/:count',to: 'categories#range_count'
  get '/categories/range/:id',to: 'categories#range'
  post '/categories/new' ,to: 'categories#create'
  delete '/categories/:id',to: 'categories#destroy'
  get '/products',to: 'products#index'
  get '/products/count',to: 'products#count'
  get '/products/:id',to: 'products#show'
  get '/products/range/:id/:count',to: 'products#range_count'
  get '/products/range/:id',to: 'products#range'
  post '/products/new' ,to: 'products#create'
  delete '/products/:id',to: 'products#destroy'
  get '/search/:type/:slug',to: 'type#search_by_type_and_slug'
  
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
