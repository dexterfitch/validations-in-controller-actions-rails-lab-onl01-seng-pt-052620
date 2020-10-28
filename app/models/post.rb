class Post < ActiveRecord::Base
  # The title cannot be blank
  validates :title, presence: true
  # The category is either "Fiction" or "Non-Fiction"
  validates :category, includes: %w(Fiction Non-Fiction)
  # The content is at least 100 characters long.
  validates :content, length: { minimum: 100 }
end
