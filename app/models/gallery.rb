class Gallery < ApplicationRecord
  mount_uploader :image, ImageUploader

  has_one_attached :image

  acts_as_taggable # Alias for acts_as_taggable_on :tags

  belongs_to :user

  has_many :comments, as: :commentable, dependent: :nullify

  validates_presence_of :image, message: '사진을 첨부해주세요.' 
  
end
