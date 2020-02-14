class Assignment < ApplicationRecord
  mount_uploader :image, ImageUploader
  mount_uploader :file, FileUploader
  
  belongs_to :user
  
  has_many :submissions, dependent: :destroy

  validates :title, presence: true
  validates :content, presence: true
  validates :end_at, presence: true


  def image_url
    image.url.present? ? image.url(:thumb) : "/images/dgu-logo.jpg"
  end
end
