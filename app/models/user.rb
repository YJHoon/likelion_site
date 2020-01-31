class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable
  
  mount_uploader :thumbnail, ImageUploader
  
  CERTIFICATION_STATES = %i[mentor mentee].freeze
  
  has_many :assignments, dependent: :nullify
  has_many :studies, dependent: :nullify
  has_many :galleries, dependent: :nullify
  has_many :comments, as: :commentable, dependent: :nullify
  has_many :wishes, as: :wishable, dependent: :destroy

  enum user_type: CERTIFICATION_STATES

  def thumbnail_url
    thumbnail.url.present? ? thumbnail.url : "/images/simba.jpg"
  end

  def status
    self.user_types[id.user_type]
  end
end
