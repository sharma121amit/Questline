class Post < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  validates :content, presence: true, length: {maximum: 256} # quest are capped at 256 chars.
  default_scope -> { order(created_at: :desc)} # newest quest / posts first
end
