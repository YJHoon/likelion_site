class Assignment < ApplicationRecord
  mount_uploader :assignment_image, ImageUploader
  
  belongs_to :user

  has_many :submissions, dependent: :destroy

  def assignment_url
    assignment_image.url.present? ? assignment_image.url : "/images/simba.jpg"
  end
end
