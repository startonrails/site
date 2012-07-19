class Comment < ActiveRecord::Base
  belongs_to :post
  attr_accessible :description, :email, :name, :published, :published_at, :status, :post_id
end
