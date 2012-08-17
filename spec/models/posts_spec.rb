require 'spec_helper'

describe Post do
  it {should respond_to(:description)}
  it {should respond_to(:title)}
  it {should respond_to(:published)}
  it {should respond_to(:moderated)}

  it {should have_many(:comments)}

  it {should validate_presence_of(:title)}
  it {should validate_presence_of(:description)}
end
