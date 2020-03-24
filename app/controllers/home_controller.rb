class HomeController < ApplicationController
  def index
    @president = User.where(mentor_type: "president")
    @vice_president = User.where(mentor_type: "vice_president")
    @education = User.where(mentor_type: "education")
    @promotion = User.where(mentor_type: "promotion")
    @HI_SW = User.where(mentor_type: "HI_SW")
    @affairs = User.where(mentor_type: "affairs")
    
    recruit = Recruit.last if Recruit.last.present?
    if recruit.present? && recruit.start_at < Time.zone.now && recruit.end_at > Time.zone.now
      @recruit = recruit
    end
  end

  def my_homework
    @submissions = Submission.where(user: current_user)
  end
end
