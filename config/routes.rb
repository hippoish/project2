Rails.application.routes.draw do
  root  'welcome#index'

  devise_for :users

  resources :neighborhoods do
    resources :carpools
    resources :posts do
      resources :replies
    end
  end

  patch '/neighborhood/:neighborhood_id/carpools/:id'=> 'carpools#join_carpool', as: :join_carpool

  # get '/neighborhoods' => 'neighborhoods#index', as: :neighborhoods
  # get '/neighborhoods/new' => 'neighborhoods#new', as: :new_neighborhood
  # post '/neighborhoods' => 'neighborhoods#create'
  # get '/neighborhoods/:id/edit' => 'neighborhoods#edit', as: :edit_neighborhood
  # get '/neighborhoods/:id' => 'neighborhoods#show', as: :neighborhood
  # patch '/neighborhoods/:id' => 'neighborhoods#update'
  # delete '/neighborhoods/:id' => 'neighborhoods#destroy'
  #
  # get '/carpools' => 'carpools#index'
  # get '/carpools/new' => 'carpools#new', as: :new_carpool
  # post '/carpools' => 'carpools#create'
  # get '/carpools/:id/edit' => 'carpools#edit', as: :edit_carpool
  # get '/carpools/:id' => 'carpools#show', as: :carpool
  # patch '/carpools/:id' => 'carpools#update'
  # delete '/carpools/:id' => 'carpools#destroy'



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
