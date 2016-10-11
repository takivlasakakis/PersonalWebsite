class PostsController < ApplicationController
	def index
	end

	def new
		@post = Post.new		
	end

	def create
		@post = Post.new post_params

		if @post.save
			redirect_to @post, notice: "This is working, Taki. Article successfully saved."
		else
			render 'new', notice: 'Uh oh! Post did not save!'
		end
	end

	private

	def post_params
		params.require(:post).permit(:title, :content)
	end
end
