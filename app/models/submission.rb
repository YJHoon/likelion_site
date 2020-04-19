class Submission < ApplicationRecord
  mount_uploader :image, ImageUploader
  mount_uploader :file, FileUploader
  
  has_rich_text :description
  has_one_attached :description
  
  enum grade: [:normal, :idea, :great]

  belongs_to :user
  belongs_to :assignment
  has_many :comments, as: :commentable, dependent: :nullify
  has_many :wishes, dependent: :destroy
  has_many :wishes_user, through: :wishes, source: :user

  validates :title, presence: true

  def attach_other_images(signed_blob_id)
    blob = ActiveStorage::Blob.find_signed(signed_blob_id)
    return other_images.attach(signed_blob_id) unless blob.present?

    other_images.attach(blob.signed_id) unless other_images.attachments.map(&:blob_id).include?(blob.id)
  end

  def image_url
    image.url.present? ? image.url : "/images/dgulion.png"
  end
end
