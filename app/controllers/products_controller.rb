class ProductsController < ApplicationController

	before_action :find_product, only: [:show, :edit, :update, :destroy]
	# before_action :find_product, except: [:index, :new, :create]

  def index
  	@products = Product.all.order(created_at: :desc)
  end

  def show
  	# @product = Product.find(params[:id])
  end

  def new
  	@product = Product.new
  end

  def create
  	@product = Product.new(product_params)
  	# @product.user = current_user // Device 
  	if @product.save
  		redirect_to product_path(@product), notice: "Producto creado exitosamente"
  	else
  		render :new
  	end
  end

  def edit
  	# @product = Product.find(params[:id])
  end

  def update
  	# @product = Product.find(params[:id])
  	if @product.update(product_params)
  		redirect_to product_path(@product), notice: "Producto actualizado correctamente"
  	else
  		render :edit
  	end
  end

  def destroy
  	# product = Product.find(params[:id])
  	@product.destroy
  	flash[:notice] = "Producto eliminado exitosamente"
  	redirect_to products_path
  end

  private
  	def product_params
  		params.require(:product).permit(:name, :description, :price, :image, :color, :user_id)
  	end

  	def find_product
  		@product = Product.find(params[:id])
  	end
end
