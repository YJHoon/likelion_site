class Assignment < ApplicationRecord
  mount_uploader :image, ImageUploader
  
  belongs_to :user

  has_many :submissions, dependent: :destroy

  def assignment_url
    image.url.present? ? image.url : "/images/simba.jpg"
  end
end
