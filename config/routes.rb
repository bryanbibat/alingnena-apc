ActionController::Routing::Routes.draw do |map|
  map.resources :debts

  map.products 'products/', :controller => 'products', :action => 'index'
  map.product 'products/:id', :controller => 'products', :action => 'show'
end
