class PostController < ApplicationController

	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@categories = Category.all
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)
		if @post.save
			redirect_to @post
		else
			render 'new'
		end
	end

	def edit
		@options = []
		Category.all.each do |c|
			@options.push([c.name, c.id])
		end
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])
	    if @post.update_attributes(post_params)
	      # Handle a successful update.
	      redirect_to @post
	    else
	      render 'edit'
	    end
	end

	def destroy
		
	end


	private

    def post_params
      params.require(:post).permit(:title, :description, :content, :category_id)
    end


end
