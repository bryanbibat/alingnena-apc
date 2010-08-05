ActionController::Routing::Routes.draw do |map|
  map.resources :debts

  map.connect('products/:id', { :controller => 'products', :action => 'show' })
end
