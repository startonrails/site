require 'spec_helper'

describe PostsController do

  before do 
    @post = FactoryGirl.build :post
    @posts = Post.available
  end

  it 'should see posts' do
    get :index
    assigns(:posts).should eq(@posts)
  end
end
