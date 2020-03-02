class HomeController < ApplicationController
  def index
    @users = User.mentor
    @recruit = Recruit.last if Recruit.last.present?
  end

  def my_homework
    @submissions = Submission.where(user: current_user)
  end
end
