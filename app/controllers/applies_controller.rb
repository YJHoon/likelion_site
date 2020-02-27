class AppliesController < ApplicationController
  before_action :load_recruit
  before_action :load_apply, only: %i[edit update]

  def index
    @applies = Apply.all
    @applies = @applies.ransack(name_or_email_cont: params[:q]).result(distinct: true) if params[:q].present?
  end

  def new
    @apply = Apply.new
  end

  def create
    Apply.create(apply_params)
    redirect_to recruit_path(Recruit.last)
  end

  def edit
  end

  def update
  end

  private
  def apply_params
    params.require(:apply).permit(:name, :email, :phone, :major, :student_id, :grade, :ask1_a, :ask2_a, :ask3_a, :ask4_a, :ask5_a, :ask5_file)
  end

  def load_recruit
    @recruit = Recruit.find(params[:recruit_id])
  end

  def load_apply
    @apply = Apply.find(params[:id])
  end
end
