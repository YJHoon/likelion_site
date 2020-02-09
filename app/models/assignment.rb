class Assignment < ApplicationRecord
  mount_uploader :image, ImageUploader
  
  belongs_to :user

  has_many :submissions, dependent: :destroy

  def image_url
    image.url.present? ? image.url : "/images/dgu-logo.jpg"
  end
end
