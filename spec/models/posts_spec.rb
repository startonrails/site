require 'spec_helper'

describe Post do
  
  before do
    @post = FactoryGirl.build :post
  end
  
  it "should be not create without title" do
   #post = Post.create(description: "Descrição :p", published: true)
   #post.should_not be_valid
   
   @post.title = ""
   @post.should_not be_valid
  end
  
  it "should be not create without description" do
    @post.description = ""
    @post.should_not be_valid
  end
end

