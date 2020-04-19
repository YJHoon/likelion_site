class Lecture < ApplicationRecord
  mount_uploader :image, ImageUploader
  mount_uploader :file, FileUploader
  
  belongs_to :user

  has_many :comments, as: :commentable, dependent: :nullify
  
  validates :title, presence: true
  validates :content, presence: true

  def image_url
    image.url.present? ? image.url : "/images/dgulion.png"
  end

end