ActionController::Routing::Routes.draw do |map|
  map.resources :debts

  map.products 'products/', :controller => 'products', :action => 'index', :conditions => { :method => :get }
  map.connect 'products/', :controller => 'products', :action => 'create',
:conditions => { :method => :post } 
  map.new_product 'products/new', :controller => 'products', :action => 'new'
  map.search_products 'products/search', :controller => 'products', :action => 'search'
  map.connect 'products/:id', :controller => 'products', :action => 'destroy', :conditions => { :method => :delete }
  map.product 'products/:id', :controller => 'products', :action => 'show', :conditions => { :method => :get }
end
