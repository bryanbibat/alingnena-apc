class ProductsController < ApplicationController
  def index
    @products = Product.find(:all)
  end

  def show
    @product = Product.find(params[:id])
  end

  def destroy
    # destroy the specified record
    redirect_to products_url
  end
end
