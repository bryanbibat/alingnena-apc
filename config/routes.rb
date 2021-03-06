ActionController::Routing::Routes.draw do |map|
  map.resources :messages, :collection => { :message_table => :get }

  map.resources :suppliers

  map.resources :purchases, :has_one => :invoice do |purchase|
    purchase.resources :line_items
  end

  map.resources :debts

  map.resources(:products, { :collection => { :search => :get }})

end
