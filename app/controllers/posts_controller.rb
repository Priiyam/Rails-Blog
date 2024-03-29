class PostsController < ApplicationController
	def index
		@post = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

	def create
		# render plain: params[:post].inspect
		@post = Post.new(post_params) # store new post as new object

		if (@post.save) #save the post
			redirect_to @post # redirec to the post
		else
			render 'new'
		end

	end

	private def post_params
		params.require(:post).permit(:title, :body)
	end
end
