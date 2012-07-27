class Comment < ActiveRecord::Base
  attr_accessible :description, :email, :name, :published, :published_at, :status, :post_id
  belongs_to :post
  VALIDATE_EMAIL = /^[_a-zA-Z0-9-]+(\.[_a-zA-Z0-9-]+)*@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*\.(([0-9]{1,3})|([a-zA-Z]{2,3})|(aero|coop|info|museum|name))$/

  validates :name, presence: true
  validates :email, presence: true, format: { with: VALIDATE_EMAIL, on: :create }
  validates :description, presence: true
end
