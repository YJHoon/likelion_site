class Gallery < ApplicationRecord
  mount_uploader :image, ImageUploader

  belongs_to :user

  has_many :comments, as: :commentable, dependent: :nullify

  validates :image, presence: true
end
