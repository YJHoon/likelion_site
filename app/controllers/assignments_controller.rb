class AssignmentsController < ApplicationController
  before_action :authenticate_user!
  before_action :load_assignment, only: %i[show edit update destroy]

  def index
    @assignments = Assignment.order(created_at: :asc)
  end

  def show
    @submissions = @assignment.submissions
  end

  def new
    @assignment = Assignment.new
  end

  def create
    creatable = true
    if params[:start_at] && params[:end_at] && ( params[:start_at] < DateTime.current) && (params[:end_at] < DateTime.current) && (params[:start_at] > params[:end_at])
      creatable = false
    end

    if creatable
      current_user.assignments.create!(assignment_params)
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
