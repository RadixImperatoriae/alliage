class Post < ApplicationRecord

  belongs_to :user
  has_attached_file :image

  default_scope -> { order(created_at: :desc) }

  validates :title, presence: true, length: { maximum: 100 }
  validates :content, presence: true, length: { maximum: 1200 }
  validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
  validates_attachment_file_name :image, :matches => [/png\Z/, /jpe?g\Z/, /gif\Z/]

end
