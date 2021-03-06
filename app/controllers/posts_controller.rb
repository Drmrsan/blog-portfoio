class PostsController < ApplicationController
	before_action :find_post, only: [:show, :edit, :update, :destroy]

	def index
		@posts = Post.all
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.create post_params
		if @post.save
			redirect_to @post, notice: "Post succesfully created"
		else
			render 'new', notice: "Ooops, something went wrong!"
		end
	end

	def edit
	end

	def update
		if @post.update post_params
			redirect_to post_path, notice: "Post succesfully updated"
		else
			render 'new', notice: "Ooops, something went wrong!"
		end
	end

	def destroy
		@post.destroy
		redirect_to posts_path
	end

	private

	def post_params
		params.require(:post).permit(:title, :content, :postimg, :remove_postimg)
	end

	def find_post
		@post = Post.find(params[:id])
	end

end
