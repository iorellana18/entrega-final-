Rails.application.routes.draw do
  
  root 'pages#home'
  get "prueba" => "pages#prueba", as: :prueba
  get "about" => "pages#about", as: :about
  get "ranking" => "pages#ranking", as: :ranking
  get "hashtags" => "hashtags#index", as: :hashtags
  get "events" => "events#index", as: :events
  get "adminevents" => "events#index_admin", as: :adminevents


  get 'lectura_tw_stream/index'

  resources :trademarks

  resources :tweets

  resources :review_events

  resources :review_account_events

  resources :key_words_events

  resources :organizations

  resources :hashtags

  resources :events

  resources :evaluations

  resources :evaluation_account_events

  resources :data_tweet_reviews

  resources :data_evaluation_real_times

  resources :data_account_events

  resources :contacts

  resources :batch_deletions

  resources :advertises

  resources :addresses

  resources :accounts

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
