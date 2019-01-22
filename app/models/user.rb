class User < ApplicationRecord

  validates :name, presence: true, length: {minimum: 4, maximum: 16}, uniqueness: {case_sensitive: false}
  has_many :posts
  has_many :comments
end
