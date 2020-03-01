class AppliesController < ApplicationController
  before_action :load_recruit
  before_action :load_apply, only: %i[edit update]

  def index
    @applies = Apply.all.ransack(name_eq: params[:name], email_eq: params[:email], student_id_eq: params[:student_id], phone_eq: params[:phone]).result(distinct: true) if params[:name].present? && params[:email].present?
  end

  def new
    @apply = Apply.new
  end

  def create
    Apply.create(apply_params)
    redirect_to recruit_path(@recruit), notice: "지원서 작성을 완료했습니다."
  end

  def edit
  end

  def update
    @apply.update(apply_params)
    redirect_to recruit_applies_path(@recruit), notice: "지원서 수정을 완료했습니다."
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
