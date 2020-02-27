class HomeController < ApplicationController
  def index
    @users = User.mentor
    @recruit = Recruit.last
  end

  def my_homework
    @submissions = Submission.where(user: current_user)
  end
end
