class ProductsController < ApplicationController
  def index
    @products = Product.find(:all)
  end

  def show
    @product = Product.find(params[:id])
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:notice] = "Product was successfully deleted."
    redirect_to products_url
  end

  def search 
    @products = Product.find_all_by_name(params["name"])  
  end

  def new
    # create a dummy Product
  end
 
  def create
    # create a Product based on submitted form
    # save Product
    # if save is successful
    #   show new Product 
    # else 
    #   go back to current page and display error
  end

end
