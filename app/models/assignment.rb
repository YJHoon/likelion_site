class Assignment < ApplicationRecord
  mount_uploader :image, ImageUploader
  mount_uploader :file, FileUploader
  
  belongs_to :user
  
  has_many :submissions, dependent: :destroy

  validates :title, presence: true
  validates :content, presence: true
  validates :start_at, presence: true
  validates :end_at, presence: true

  def not_submitted_users
    submitted_ids = User.includes(:submissions).where(submissions: {assignment: self}).ids
    User.mentee.where.not(id: submitted_ids)
  end

  def image_url
    image.url.present? ? image.url(:thumb) : "/images/dgulion.png"
  end
end
