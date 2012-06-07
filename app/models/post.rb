class Post < ActiveRecord::Base
	attr_accessible :description, :title, :published
	scope :available,  where(published: true)
end
