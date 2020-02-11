class Lecture < ApplicationRecord
  mount_uploader :image, ImageUploader
  mount_uploader :file, FileUploader
  
  belongs_to :user

  has_many :comments, as: :commentable, dependent: :nullify
  
  def image_url
    image.url.present? ? image.url : "/images/dgu-logo.jpg"
  end
end
