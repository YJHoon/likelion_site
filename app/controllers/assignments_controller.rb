class AssignmentsController < ApplicationController
  before_action :authenticate_user!
  before_action :load_assignment, only: %i[show edit update destroy]

  def index
    @assignments = Assignment.all
  end

  def show
    @submissions = @assignment.submissions
  end

  def new
    @assignment = Assignment.new
  end

  def create
    assignment = current_user.assignments.create!(assignment_params)
    redirect_to assignments_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def load_assignment
    @assignment = Assignment.find(params[:id])
  end

  def assignment_params
    params.require(:assignment).permit(:title, :content, :submit_time, :assignment_image)
  end
end
