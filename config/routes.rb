ActionController::Routing::Routes.draw do |map|
  # The priority is based upon order of creation: first created -> highest priority.

  # Sample of regular route:
  #   map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   map.resources :products

  # Sample resource route with options:
  #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

  # Sample resource route with sub-resources:
  #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller

  # Sample resource route within a namespace:
  #   map.namespace :admin do |admin|
  #     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
  #     admin.resources :products
  #   end

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  # map.root :controller => "welcome"
  
  map.root :controller => "boards"
  
  # TODO: Uncomment all of these routes when things get more stable.
  
  # Map routes for boards based on shortcodes
  # aka chichan.org/lv maps to the Lakeview board with shortcode 'lv'
  #map.connect '/:shortcode', :controller => 'boards', :action => 'show'
  #map.connect '/:shortcode/topics/create', :controller => 'topics', :action => 'create'
  #map.connect '/:shortcode/post', :controller => 'posts', :action => 'create'
  #map.connect '/:shortcode/show/:id', :controller => 'topics', :action => 'show'
  #map.connect '/:shortcode/reply/:parent_thread', :controller => 'posts', :action => 'create'


  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
