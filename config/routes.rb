ActionController::Routing::Routes.draw do |map|
  map.resources :invoices

  map.resources :purchases

  map.resources :debts

  map.resources(:products, { :collection => { :search => :get }})

end
