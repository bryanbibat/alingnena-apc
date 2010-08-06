module PurchasesHelper
  def display_invoice(purchase) 
    unless purchase.invoice.nil?
      concat("<p><b>Invoice Reference Number:</b>\n") 
      concat(link_to h(@purchase.invoice.reference_number),
             edit_purchase_invoice_url(@purchase)) 
      concat("</p>")
      concat("<p>")
      concat(link_to "Delete Invoice", purchase_invoice_url(@purchase),
             :confirm => "Are you sure?", :method => :delete)
      concat("</p>")
    else 
      concat("<p>") 
      concat(link_to "Create Invoice", new_purchase_invoice_url(@purchase)) 
      concat("</p>")
    end 
  end
end
