class Comment < ActiveRecord::Base
  belongs_to :post
  attr_accessible :description, :email, :moderated, :name, :published, :published_at, :status
end
