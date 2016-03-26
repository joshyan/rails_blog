class PostsController < ApplicationController

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
		@post = Post.new()
		@post.category = Category.find(params[:post][:category_id])
		@post.title = params[:post][:title]
		@post.description = params[:post][:description]
		@post.content = params[:post][:content]
		@post.published = params[:post][:published]

		if @post.save
			redirect_to posts_index_url
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
		@post.category = Category.find(params[:post][:category_id])
		@post.title = params[:post][:title]
		@post.description = params[:post][:description]
		@post.content = params[:post][:content]
		@post.published = params[:post][:published]
		
	    if @post.save
	      # Handle a successful update.
	      redirect_to posts_index_url
	    else
	      render 'edit'
	    end
	end

	def destroy
		Post.find(params[:id]).destroy
		redirect_to posts_index_url
	end


	private

    def post_params
      params.require(:post).permit(:title, :description, :content, :category_id)
    end


end
