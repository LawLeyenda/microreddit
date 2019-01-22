class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :body, presence: true, length: {maximum: 256}
end
