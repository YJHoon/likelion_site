class Wish < ApplicationRecord
  belongs_to :user
  belongs_to :submission

  def user_wish
    if self.user.present?
    end
  end
end
