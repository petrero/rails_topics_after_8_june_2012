class ProductsController < ApplicationController
	caches_page :index
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end
end
