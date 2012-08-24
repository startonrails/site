class Post < ActiveRecord::Base
  attr_accessible :description, :title, :published, :moderated, :user_id
  has_many :comments
  belongs_to :user
  scope :available,  where(published: true)

  validates :title, :description, presence: true
end
