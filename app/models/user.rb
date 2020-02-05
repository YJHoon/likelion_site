class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable, :trackable
  
  mount_uploader :thumbnail, ImageUploader

  CERTIFICATION_STATES = %i[default mentee mentor].freeze

  enum gender: [:not_choose, :man, :woman]
  enum role: CERTIFICATION_STATES

  KOR_NAME = {default: "일반회원", mentee: "신입회원", mentor: "운영진"}



  #과제
  has_many :assignments, dependent: :nullify
  #과제 제출
  has_many :submissions, dependent: :nullify
  #강의 및 공부 관련
  has_many :lectures, dependent: :nullify
  #갤러리 사진
  has_many :galleries, dependent: :nullify
  #댓글
  has_many :comments, as: :commentable, dependent: :nullify
  #좋아요 
  has_many :wishes, dependent: :destroy
  #제출 과제에 좋아요
  has_many :wished_submissions, through: :wishes, source: :submission
  #학번 포멧
  validates_format_of :student_id, :with => /20[0-9]{8}/, :message => "알맞은 학번 양식을 사용하세요", allow_nil: true


  def thumbnail_url
    thumbnail.url.present? ? thumbnail.url : "/images/simba.jpg"
  end
  
  def is_wish?(submission)
    Wish.find_by(user_id: self.id, submission_id: submission.id).present?
  end
end
