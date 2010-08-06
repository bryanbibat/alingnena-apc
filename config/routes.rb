ActionController::Routing::Routes.draw do |map|
  map.resources :purchases do |purchases| 
    purchases.resource :invoice
  end

  map.resources :debts

  map.resources(:products, { :collection => { :search => :get }})

end
