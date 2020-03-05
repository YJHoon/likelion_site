class Apply < ApplicationRecord
  mount_uploader :ask5_file, FileUploader

  belongs_to :recruit

  validates_format_of :student_id, presence: true, :numericality => true, :with => /20[0-9]{8}/, :message => "알맞은 학번 양식을 사용하세요"
  # validates :student_id,   :presence => {:message => '알맞은 학번 양식을 사용하세요.'},
  #                          :numericality => true,
  #                          :length => { :maximum => 10 }
  validates :phone, presence: true, numericality: true
  validates :name, presence: true
  validates :email, presence: true
  validates :major, presence: true
  validates :grade, presence: true
  validates :ask1_a, presence: true
  validates :ask2_a, presence: true
  validates :ask3_a, presence: true
  validates :ask4_a, presence: true
  validates :ask5_a, presence: true

end
