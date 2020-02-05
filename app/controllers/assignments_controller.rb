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
    result = Assignment.check_date(assignment_params)
    if result
      assignment = current_user.assignments.create!(assignment_params)
      redirect_to assignments_path
    else
      redirect_to new_assignment_path, alert: "해당 시간은 선택할 수 없습니다."
    end
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
    params.require(:assignment).permit(:title, :content, :start_at, :end_at, :file, :image)
  end
end
