class Recruit < ApplicationRecord

  enum member_num: %i[eight]

  QUESTION_TYPES = %i[text choice multi_choice file].freeze
  
  enum ask1_type: QUESTION_TYPES, _prefix: :ask1
  enum ask2_type: QUESTION_TYPES, _prefix: :ask2
  enum ask3_type: QUESTION_TYPES, _prefix: :ask3
  enum ask4_type: QUESTION_TYPES, _prefix: :ask4
  enum ask5_type: QUESTION_TYPES, _prefix: :ask5
  enum ask6_type: QUESTION_TYPES, _prefix: :ask6
  enum ask7_type: QUESTION_TYPES, _prefix: :ask7
  enum ask8_type: QUESTION_TYPES, _prefix: :ask8
  enum ask9_type: QUESTION_TYPES, _prefix: :ask9
  enum ask10_type: QUESTION_TYPES, _prefix: :ask10


  has_many :applies, dependent: :nullify

end
