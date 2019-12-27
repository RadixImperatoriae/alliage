class Post < ApplicationRecord

  belongs_to :user
  has_attached_file :image

  default_scope -> { order(created_at: :desc) }

  validates :title, presence: true, length: { maximum: 30 }
  validates :content, presence: true, length: { maximum: 500 }

end
