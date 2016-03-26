class CategoriesController < ApplicationController
	def index
		@categories = Category.all
	end

	def show
		@category = Category.find(params[:id])
		@posts = Post.where(category_id: params[:id], published: true)
	end

	def new
		@category = Category.new
	end

	def create
		@category = Category.new(category_params)
		if @category.save
			redirect_to categories_index_url
		else
			render 'new'
		end
	end

	def edit
		@category = Category.find(params[:id])
	end

	def update
		@category = Category.find(params[:id])
	    if @category.update_attributes(category_params)
	      # Handle a successful update.
	      redirect_to categories_index_url
	    else
	      render 'edit'
	    end
	end

	def destroy
		Category.find(params[:id]).destroy
		redirect_to categories_index_url		
	end


	private

    def category_params
      params.require(:category).permit(:name, :description)
    end
end
