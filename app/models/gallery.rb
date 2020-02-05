class Gallery < ApplicationRecord
  mount_uploader :image, ImageUploader

  belongs_to :user

  has_many :comments, as: :commentable, dependent: :nullify

  validates :image, presence: true

  def self.datelist
    # gallery_created = self.pluck(:created_at)
    # gallery_datelist = []

    # gallery_created.each do |g|
    #   gallery_datelist << g.to_date.to_s
    # end

    # gallery_datelist.uniq
    gallery_datelist = self.group_by { |g| g.created_at.to_date }  
  end

end
