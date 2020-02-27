class RecruitsController < ApplicationController
  def show
    @recruit = Recruit.find(params[:id])
  end
end
