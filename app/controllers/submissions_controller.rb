class SubmissionsController < ApplicationController
  before_action :authenticate_user!
  before_action :load_assignment, only: %i[show new create edit update]
  before_action :load_submission, only: %i[show edit update wish_toggle]

  def show
  end

  def new
    @submission = Submission.new
  end

  def create
    submission = @assignment.submissions.new(submission_params)
    submission.user = current_user
    submission.save!

    redirect_to assignment_path(@assignment)
  end

  def edit
  end

  def update
  end

  def wish_toggle
    wish = @submission.wishes.find_by(user: current_user)
    if wish.nil?
      @submission.wishes.create!(user: current_user)
    else
      wish.destroy!
    end
  end

  private
  def load_assignment
    @assignment = Assignment.find(params[:assignment_id])
  end
  def load_submission
    @submission = Submission.find(params[:id])
  end

  def submission_params
    params.require(:submission).permit(:title, :description, :submission_url, :submission_image)
  end
end
