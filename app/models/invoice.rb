class Invoice < ActiveRecord::Base
  belongs_to :purchase

  def display_purchase
    return purchase.description unless purchase.nil?
    "(no Purchase set)"
  end
end
