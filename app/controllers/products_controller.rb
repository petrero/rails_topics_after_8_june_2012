class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end
	def delete
		@product = Product.find(params[:id])
	end
  def create
		category = Category.find_or_create_by_name!(params[:product][:category])
		params[:product][:category_id] = category.id
    params[:product].delete("category")
    @product = Product.new(params[:product])
    if @product.save
      redirect_to @product, notice: "Product was successfully created."
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
		category = Category.find_or_create_by_name!(params[:product][:category])
		params[:product][:category_id] = category.id
    params[:product].delete(:category)
    if @product.update_attributes(params[:product])
      redirect_to @product, notice: "Product was successfully updated."
    else
      render :edit
    end
  end
	
  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_url, notice: "Product was destroyed."
  end
end
