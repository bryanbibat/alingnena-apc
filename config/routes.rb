ActionController::Routing::Routes.draw do |map|
  map.resources :debts

  map.search_products 'products/search', :controller => 'products', :action => 'search'
  map.resources(:products)

end
