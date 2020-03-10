class HomeController < ApplicationController
  def index
    @users = User.mentor
    recruit = Recruit.last if Recruit.last.present?
    if recruit.present? && recruit.start_at < Time.zone.now && recruit.end_at > Time.zone.now
      @recruit = recruit
    end
  end

  def my_homework
    @submissions = Submission.where(user: current_user)
  end
end
