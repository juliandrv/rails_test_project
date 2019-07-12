class ImagesController < ApplicationController

	before_action :find_image, only: [:show, :edit, :update, :destroy]
	# before_action :find_product, except: [:index, :new, :create]}

	def index
  	@image = Image.all.order(created_at: :desc)
  end

  def show
  	# @product = Product.find(params[:id])
  end

  def new
  	@image = Image.new
  end

  def create
  	@image = Image.new(image_params)
  	# @product.user = current_user // Device 
  	if @image.save
  		redirect_to image_path(@image), notice: "Imagen cargada exitosamente"
  	else
  		render :new
  	end
  end

  def edit
  	# @product = Product.find(params[:id])
  end

  def update
  	# @product = Product.find(params[:id])
  	if @image.update(image_params)
  		redirect_to image_path(@image), notice: "Imagen actualizada correctamente"
  	else
  		render :edit
  	end
  end

  def destroy
  	# image = image.find(params[:id])
  	@image.destroy
  	flash[:notice] = "Imagen eliminada exitosamente"
  	redirect_to images_path
  end

  private
  	def image_params
  		params.require(:image).permit(:name, :url, :alt)
  	end

  	def find_image
  		@image = Image.find(params[:id])
  	end
end
