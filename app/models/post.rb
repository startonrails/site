class Post < ActiveRecord::Base
  attr_accessible :description, :title, :published, :moderated
  has_many :comments
  scope :available,  where(published: true)

  validates :title, :description, presence: true
end
