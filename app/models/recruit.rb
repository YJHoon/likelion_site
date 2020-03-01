class Recruit < ApplicationRecord

  enum member_num: %i[eight]

  has_many :applies, dependent: :nullify

end
