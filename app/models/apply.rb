class Apply < ApplicationRecord
  mount_uploader :ask5_file, FileUploader

  belongs_to :recruit

  PARTICIPATION_STATES = %i[participation not late].freeze

  enum additional_a1: PARTICIPATION_STATES, _prefix: :additional_q1
  enum additional_a2: PARTICIPATION_STATES, _prefix: :additional_q2

  validates_format_of :student_id, presence: true, :numericality => true, :with => /20[0-9]{8}/, :message => "알맞은 학번 양식을 사용하세요"
  validates_format_of :phone, presence: true, :numericality => true, :with => /010[0-9]{8}/, :message => "알맞은 전화번호 양식을 사용하세요"
  validates :name, presence: true
  validates :email, presence: true
  validates :major, presence: true
  validates :grade, presence: true
  validates :ask1_a, presence: true
  validates :ask2_a, presence: true
  validates :ask3_a, presence: true
  validates :ask4_a, presence: true
  validates :ask5_a, presence: true
  validates :additional_a1, presence: true
  validates :additional_a2, presence: true
end
