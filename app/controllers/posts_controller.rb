class PostsController < ApplicationController
  before_filter :authenticate_user!
  layout "admin"
  respond_to :html, :json, :js
  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.paginate(page: params[:page], per_page: 10)

    respond_with @posts
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @post = Post.find(params[:id])

    respond_with @post
  end

  # GET /posts/new
  # GET /posts/new.json
  def new
    @post = Post.new

    respond_with @post
  end

  # GET /posts/1/edit
  def edit
    @post = Post.find(params[:id])
   end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(params[:post])
    flash[:notice] = 'Post was successfully created.' if @post.save
    respond_with @post
  end

  # PUT /posts/1
  # PUT /posts/1.json
  def update
    @post = Post.find(params[:id])
    flash[:notice] = 'Post was successfully updated.' if @post.update_attributes(params[:post])
    respond_with @post
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    respond_with @post
  end

  def publish
    @post = Post.find(params[:id])
    @post.published = (@post.published) ? false : true
    @post.save
    respond_with @post
  end

  def moderated
    @post = Post.find(params[:id])
    @post.moderated = (@post.moderated) ? false : true
    @post.save
    respond_with @post
  end
end
