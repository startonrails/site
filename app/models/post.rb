class Post < ActiveRecord::Base
  attr_accessible :description, :title, :published
  has_many :comments
  scope :available,  where(published: true)

  validates :title, presence: true
  validates :description, presence: true
end
