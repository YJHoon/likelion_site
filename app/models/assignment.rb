class Assignment < ApplicationRecord
  mount_uploader :image, ImageUploader
  
  belongs_to :user

  has_many :submissions, dependent: :destroy

  def assignment_url
    image.url.present? ? image.url : "/images/simba.jpg"
  end

  def self.check_date(params)
    result = false if (params[:start_at] && params[:start_at] < DateTime.current) && 
    (params[:end_at] && params[:end_at] < DateTime.current) && 
    (params[:start_at] > params[:end_at])
    result
  end
end
