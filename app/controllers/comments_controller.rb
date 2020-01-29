class CommentsController < ApplicationController

	def create
		@post = Post.find(params[:post_id])
		byebug
		@comment = @post.comments.create(params[:comment].permit(:name,:comment))
		redirect_to post_path(@post)
	end


end
