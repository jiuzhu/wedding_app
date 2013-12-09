WeddingApp::Application.routes.draw do
  # Routes for the Membership resource:
  # CREATE
  get '/memberships/new', controller: 'memberships', action: 'new', as: 'new_membership'
  post '/memberships', controller: 'memberships', action: 'create', as: 'memberships'

  # READ
  get '/memberships', controller: 'memberships', action: 'index'
  get '/memberships/:id', controller: 'memberships', action: 'show', as: 'membership'

  # UPDATE
  get '/memberships/:id/edit', controller: 'memberships', action: 'edit', as: 'edit_membership'
  patch '/memberships/:id', controller: 'memberships', action: 'update'

  # DELETE
  delete '/memberships/:id', controller: 'memberships', action: 'destroy'
  #------------------------------

  devise_for :users

   # Homepage
  get '/', controller: 'homepage', action: 'index', as: 'root'
  
  get '/homepage/onetime', controller: 'homepage', action: 'onetime', as: 'onetime'


  # Routes for the Group resource:
  # CREATE
  get '/groups/new', controller: 'groups', action: 'new', as: 'new_group'
  post '/groups', controller: 'groups', action: 'create', as: 'groups'

  # READ
  get '/groups', controller: 'groups', action: 'index'
  get '/groups/:id', controller: 'groups', action: 'show', as: 'group'

  # UPDATE
  get '/groups/:id/edit', controller: 'groups', action: 'edit', as: 'edit_group'
  patch '/groups/:id', controller: 'groups', action: 'update'

  # DELETE
  delete '/groups/:id', controller: 'groups', action: 'destroy'
  #------------------------------

  # Routes for the Rsvp resource:
  
  # CREATE
  get '/rsvps/new', controller: 'rsvps', action: 'new', as: 'new_rsvp'
  post '/rsvps/guestcreate', controller: 'rsvps', action: 'guestcreate', as: 'guest_rsvps'
  post '/rsvps', controller: 'rsvps', action: 'create', as: 'rsvps'

  # RSVP THANK YOU
  get '/rsvps/thankyou', controller: 'rsvps', action: 'thanks', as: 'rsvp_thankyou'

  
  # READ
  get '/rsvps', controller: 'rsvps', action: 'index'
  get '/rsvps/:id', controller: 'rsvps', action: 'show', as: 'rsvp'

  # UPDATE
  get '/rsvps/:id/edit', controller: 'rsvps', action: 'edit', as: 'edit_rsvp'
  patch '/rsvps/:id', controller: 'rsvps', action: 'update'

  # DELETE
  delete '/rsvps/:id', controller: 'rsvps', action: 'destroy'



  # GUEST RSVP
  get '/rsvps/guest/:id', controller: 'rsvps', action: 'rsvpguest', as: 'rsvp_guest'


  #------------------------------

  # Routes for the Guest resource:
  # CREATE
  get '/guests/new', controller: 'guests', action: 'new', as: 'new_guest'
  post '/guests', controller: 'guests', action: 'create', as: 'guests'

  # RSVP Food Selection
  get '/guests/foodselection', controller: 'guests', action: 'foodselection'

  # READ
  get '/guests', controller: 'guests', action: 'index'
  get '/guests/:id', controller: 'guests', action: 'show', as: 'guest'

  # UPDATE
  get '/guests/:id/edit', controller: 'guests', action: 'edit', as: 'edit_guest'
  patch '/guests/:id', controller: 'guests', action: 'update'

  # DELETE
  delete '/guests/:id', controller: 'guests', action: 'destroy'



  #------------------------------

  # Routes for the User resource:
  # CREATE
  get '/users/new', controller: 'users', action: 'new', as: 'new_user'
  post '/users', controller: 'users', action: 'create', as: 'users'

  # READ
  get '/users', controller: 'users', action: 'index'
  get '/users/:id', controller: 'users', action: 'show', as: 'user'

  # UPDATE
  get '/users/:id/edit', controller: 'users', action: 'edit', as: 'edit_user'
  patch '/users/:id', controller: 'users', action: 'update'

  # DELETE
  delete '/users/:id', controller: 'users', action: 'destroy'

  # One Time



  #------------------------------

  

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
