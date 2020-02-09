class Submission < ApplicationRecord
  mount_uploader :image, ImageUploader

  belongs_to :user
  belongs_to :assignment

  has_many :comments, as: :commentable, dependent: :nullify
  has_many :wishes, dependent: :destroy
  has_many :wishes_user, through: :wishes, source: :user

  enum grade: [:normal, :idea, :great]

  def image_url
    image.url.present? ? image.url : "/images/dgu-logo.jpg"
  end
end
