ActionController::Routing::Routes.draw do |map|
  map.resources :debts

  map.resources(:products, { :collection => { :search => :get }})

end
