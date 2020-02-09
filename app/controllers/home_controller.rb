class HomeController < ApplicationController
  def index
    @users = User.mentor
  end

  def my_homework
    @submissions = Submission.where(user: current_user)
  end
end
