class CommentsController < ApplicationController
  respond_to :html, :json
  layout 'admin'

  def index
  	@comments = Comment.all
 	end

  def create
    post = Post.find(params[:post_id])
    @comment = post.comments.build(params[:comment])
    if @comment.save
      flash[:notice] = 'Comment was successfully created.'

      redirect_to root_path
    end
  end		
end
