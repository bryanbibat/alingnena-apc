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
    @products = Product.all
  end

end
