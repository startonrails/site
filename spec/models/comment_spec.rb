require 'spec_helper'

describe Comment do
  subject {Comment.new}
  context "should respond_to" do
    it{should respond_to(:description)}
    it{should respond_to(:email)}
    it{should respond_to(:name)}
    it{should respond_to(:published)}
    it{should respond_to(:published_at)}
    it{should respond_to(:status)}
    it{should respond_to(:post_id)}
  end

  context "should have these association" do
    it{should belong_to(:post)}
  end

  context "validate presence" do
    it{should validate_presence_of(:name)}
    it{should validate_presence_of(:email)}
    it{should validate_presence_of(:description)}
  end

  context "validate e-mail format" do
    it{should validate_format_of(:email).with("start@startonrails.com").with_message(:invalid)}
    it{should validate_format_of(:email).not_with("starttigaragatiga.com").with_message(:invalid)}

  end

  require File.expand_path('spec/spec_helper')

  describe "Should not be without name" do

  end

end
