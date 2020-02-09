class Gallery < ApplicationRecord
  mount_uploader :image, ImageUploader

  acts_as_taggable # Alias for acts_as_taggable_on :tags
  acts_as_taggable_on

  belongs_to :user

  has_many :comments, as: :commentable, dependent: :nullify

  validates :image, presence: true
end
