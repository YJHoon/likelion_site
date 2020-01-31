class Comment < ApplicationRecord
  belongs_to :commentable, polymorphic: true


  def time_since
    create = self.created_at.to_time
    now = Time.zone.now
    time = now - create
    
    if time < 3600
      unit = 1.minute
      strunit = '분'
    elsif (time > 3600 && time < 86400)
      unit = 1.hour
      strunit = '시간'
    elsif (time > 86400 && time < 2592000)
      unit = 1.day
      strunit = '일'
    elsif (time > 2592000 && time < 31536000)
      unit = 1.month
      strunit = '개월'
    else
      unit = 1.year
      strunit = '년'
    end

    differ_time = (time / unit).round.to_s + strunit
  end
end
