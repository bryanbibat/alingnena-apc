class Invoice < ActiveRecord::Base
  belongs_to :purchase
  validates_uniqueness_of :purchase_id

  def display_purchase
    return purchase.description unless purchase.nil?
    "(no Purchase set)"
  end
end
