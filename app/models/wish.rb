class Wish < ApplicationRecord
  belongs_to :user
  belongs_to :submission
end
