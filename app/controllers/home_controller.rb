class HomeController < ApplicationController
  def index
   @posts = Post.available
   @comment = Comment.new
  end
end
