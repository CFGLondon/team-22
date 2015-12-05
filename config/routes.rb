Rails.application.routes.draw do
  devise_for :users
  devise_for :models
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  root 'pages#index'
  get 'pages/about' => 'high_voltage/pages#show', id: 'about'

  # Registration
  #match '/registration/volunteer', to: 'registration#volunteer', via: [:get]

  get '/volunteer/register', :as => 'volunteer_register',to: 'volunteer#new'
  post '/volunteer/login', :as => 'volunteer_login',to: 'volunteer#login'
  match '/volunteer/register', to: 'volunteer#create', via: [:post]

  get '/contituent/register', :as => 'contituent_register',to: 'contituent#new'
  match '/contituent/register', to: 'contituent#create', via: [:post]
   
  # Admin
  get '/admin', :as => 'admin_index',to: 'admin#index'

  #volunteer
  #match '/volunteer/register', to: 'volunteer#new', via: [:get]
  match '/volunteer/home', to: 'volunteer#home', via: [:get]
  match '/volunteer/profile', to: 'volunteer#profile', via: [:get]
  match '/volunteer/reviews', to: 'volunteer#reviews', via: [:get]
  match '/volunteer/schedule', to: 'volunteer#schedule', via: [:get]
  match '/volunteer/settings', to: 'volunteer#settings', via: [:get]
  # Contituents
  match '/contituent/home', to: 'contituents#home', via: [:get]
  match '/contituent/profile', to: 'contituents#profile', via: [:get]
  match '/contituent/reviews', to: 'contituents#reviews', via: [:get]
  match '/contituent/schedule', to: 'contituents#schedule', via: [:get]
  match '/contituent/settings', to: 'contituents33#settings', via: [:get]

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
