ActionController::Routing::Routes.draw do |map|
  map.resources :suppliers

  map.resources :purchases, :has_one => :invoice

  map.resources :debts

  map.resources(:products, { :collection => { :search => :get }})

end
