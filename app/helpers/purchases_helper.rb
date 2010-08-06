module PurchasesHelper
  def display_invoice(purchase) 
    unless purchase.invoice.nil?
      render :partial => "invoice", :locals => { :purchase => @purchase } 
    else
      render :partial => "no_invoice", :locals => { :purchase => @purchase } 
    end
  end
end
