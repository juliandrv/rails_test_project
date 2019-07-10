class BlogsController < ApplicationController
	def index
	end

	def create
		## Aquí hace el guardado a la base de datos y una vez termine:
		redirect_to blogs_path
	end

	def new
	end

	def edit
	end

	def show
	end

	def update
	end

	def destroy
	end
end
