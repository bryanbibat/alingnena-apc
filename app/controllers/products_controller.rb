class ProductsController < ApplicationController
  before_filter :check_if_aling_nena, :except => [:index, :show, :search]
  layout "main"

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
    @product = Product.new  
  end
 
  def create
    @product = Product.new(params[:product])     
    if @product.save
      flash[:notice] = "Product has been successfully created."
      redirect_to @product
    else
      render :action => "new"
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(params[:product])
      redirect_to @product, :notice => 'Product was successfully updated.'
    else 
      render :action => "edit"
    end
  end

  private
    def check_if_aling_nena
      authenticate_or_request_with_http_basic("Products Realm") do |username, password|
        username == "admin" and password == "sTr0NG_p4$swOrD"
      end
    end
  
end
