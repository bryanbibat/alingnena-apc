module InvoicesHelper
  def display_purchase(invoice)
    unless invoice.purchase.nil?
      link_to (h invoice.purchase.description), invoice.purchase
    else
      "(no Purchase set)"
    end
  end
end
