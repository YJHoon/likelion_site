class AppliesController < ApplicationController
  before_action :load_recruit
  before_action :load_apply, only: %i[edit update]
  # before_action :check_finished, only: %i[new create edit update]

  def index
    @applies = Apply.all.ransack(name_eq: params[:name], email_eq: params[:email], student_id_eq: params[:student_id], phone_eq: params[:phone]).result(distinct: true) if params[:name].present? && params[:email].present?
  end

  def new
    if @recruit.end_at > Time.zone.now
      @apply = Apply.new
    else
      redirect_to recruit_path(@recruit), alert: "지원서 제출기한이 지났습니다. 운영진에게 문의하세요."
    end
  end

  def create
    if @recruit.end_at > Time.zone.now
      @result = false
      @apply = @recruit.applies.new(apply_params)
      if @apply.save
        @result = true
        flash[:notice] = "지원서 작성을 완료했습니다."
      end
    else
      redirect_to root_path, alert: "지원서 제출기한이 지났습니다. 운영진에게 문의하세요."
    end
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

  def check_finished
    if !current_user.mentor?
      current_time = Time.zone.now
      redirect_to root_path, alert: "과제 제출기한이 지났습니다. 운영진에게 문의하세요." if @recruit.end_at > current_time
    end
  end
end
