class HomeController < ApplicationController
	respond_to :html

  def index
   @posts = Post.available
  end

  def post
  	@post = Post.find(params[:id])
  	@comment = @post.comments.build
  	respond_with @post
  end
end
