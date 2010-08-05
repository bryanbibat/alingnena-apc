ActionController::Routing::Routes.draw do |map|
  map.resources :debts

  map.connect 'products/', :controller => 'products', :action => 'index'
  map.connect 'products/:id', :controller => 'products', :action => 'show'
end
