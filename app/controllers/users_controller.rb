class UsersController < ApplicationController
  def mypage
    User.where(user_type: :mentor)
  end
  
  def edit
  end

  def update
    urrent_user.update_attributes!(params.require(:current_user))
  end

  private
  def user_params
    params.require(:current_user).permit(:name, :email, :user_type, :thumbnail, :password, :password_confirmation)
  end
end