class Recruit < ApplicationRecord
  mount_uploader :ask5_file, FileUploader

  enum member_num: %i[eight]

  has_many :applies


  validates_format_of :student_id, :with => /20[0-9]{8}/, :message => "알맞은 학번 양식을 사용하세요", allow_nil: true
  validates :name, presence: true
  validates :email, presence: true
  validates :phone, presence: true
  validates :major, presence: true
  validates :grade, presence: true
  validates :ask1_a, presence: true
  validates :ask2_a, presence: true
  validates :ask3_a, presence: true
  validates :ask4_a, presence: true
  validates :ask5_a, presence: true
end
