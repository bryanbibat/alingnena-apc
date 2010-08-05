module InvoicesHelper
  def display_purchase(invoice)
    unless invoice.purchase.nil?
      h invoice.purchase.description
    else
      "(no Purchase set)"
    end
  end
end
