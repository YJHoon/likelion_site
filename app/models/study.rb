class Study < ApplicationRecord
  mount_uploader :study_images, ImageUploader
  belongs_to :user

  has_many :comments, as: :commentable, dependent: :nullify
  
  
  def image_url
    study_images.url.present? ? study_images.url : ""
  end
end
