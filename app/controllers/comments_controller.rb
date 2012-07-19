class CommentsController < ApplicationController
  respond_to :html, :json

  def create
    @comment = Comment.new(params[:comment])
    if @comment.save
      flash[:notice] = 'Comment was successfully created.'

      redirect_to root_path
    end
  end
end
