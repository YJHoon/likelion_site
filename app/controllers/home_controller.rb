class HomeController < ApplicationController
  def index
    @users = User.mentor
  end
end
