class Submission < ApplicationRecord
  mount_uploader :submission_image, ImageUploader

  belongs_to :user
  belongs_to :assignment

  has_many :comments, as: :commentable, dependent: :nullify
  has_many :wishes, dependent: :destroy
  has_many :wishes_user, through: :wishes, source: :user

  def submission_image_url
    submission_image.url.present? ? submission_image.url : "/images/simba.jpg"
  end
end
