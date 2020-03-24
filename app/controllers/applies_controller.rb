class AppliesController < ApplicationController
  before_action :load_recruit
  before_action :load_apply, only: %i[edit update check_apply]

  def index
    @applies = Apply.all.ransack(name_eq: params[:name], email_eq: params[:email], student_id_eq: params[:student_id], phone_eq: params[:phone]).result(distinct: true) if params[:name].present? && params[:email].present?
  end

  def new
    if @recruit.end_at > Time.zone.now && @recruit.start_at < Time.zone.now
      @apply = Apply.new
    else
      redirect_to root_path, alert: "지원서 제출기한이 지났습니다. 운영진에게 문의하세요."
    end
  end

  def create
    if @recruit.end_at > Time.zone.now && @recruit.start_at < Time.zone.now
      @result = false
      @apply = @recruit.applies.new(apply_params)

      if @apply.recruit.ask1_type == "multi_choice"
        params[:apply][:ask1_a].delete('0')
        @apply.ask1_a = params[:apply][:ask1_a].join(',')
      end
      if @apply.recruit.ask2_type == "multi_choice"
        params[:apply][:ask2_a].delete('0')
        @apply.ask2_a = params[:apply][:ask2_a].join(',')
      end
      if @apply.recruit.ask3_type == "multi_choice"
        params[:apply][:ask3_a].delete('0')
        @apply.ask3_a = params[:apply][:ask3_a].join(',')
      end
      if @apply.recruit.ask4_type == "multi_choice"
        params[:apply][:ask4_a].delete('0')
        @apply.ask4_a = params[:apply][:ask4_a].join(',')
      end
      if @apply.recruit.ask5_type == "multi_choice"
        params[:apply][:ask5_a].delete('0')
        @apply.ask5_a = params[:apply][:ask5_a].join(',')
      end
      if @apply.recruit.ask6_type == "multi_choice"
        params[:apply][:ask6_a].delete('0')
        @apply.ask6_a = params[:apply][:ask6_a].join(',')
      end
      if @apply.recruit.ask7_type == "multi_choice"
        params[:apply][:ask7_a].delete('0')
        @apply.ask7_a = params[:apply][:ask7_a].join(',')
      end
      if @apply.recruit.ask8_type == "multi_choice"
        params[:apply][:ask8_a].delete('0')
        @apply.ask8_a = params[:apply][:ask8_a].join(',')
      end
      if @apply.recruit.ask9_type == "multi_choice"
        params[:apply][:ask9_a].delete('0')
        @apply.ask9_a = params[:apply][:ask9_a].join(',')
      end
      if @apply.recruit.ask10_type == "multi_choice"
        params[:apply][:ask10_a].delete('0')
        @apply.ask10_a = params[:apply][:ask10_a].join(',')
      end

      if @apply.save
        @result = true
        flash[:notice] = "지원서 작성을 완료했습니다."
      end
    else
      redirect_to root_path, alert: "지원서 제출기한이 지났습니다. 운영진에게 문의하세요."
    end
  end

  def edit
    @student_id = params[:student_id]
    if @apply.student_id != @student_id
      redirect_to recruit_applies_path(@recruit)
    end
  end

  def update
    @result = false
    if @recruit.end_at > Time.zone.now && @recruit.start_at < Time.zone.now
      if @apply.update(apply_params)
        @result = true
        flash[:notice] = "지원서 수정을 완료했습니다."
      end
    else
      redirect_to root_path, alert: "지원서 제출기한이 지났습니다. 운영진에게 문의하세요."
    end
  end

  def check_apply
    @result = false
    @student_id = params[:apply][:student_id]
    if @student_id == @apply.student_id
      @result = true
    end
  end

  private

  def apply_params
    params.require(:apply).permit(:name, :email, :phone, :major, :student_id, :grade, :ask1_a, :ask2_a, :ask3_a, :ask4_a, :ask5_a, :ask6_a, :ask7_a, :ask8_a, :ask9_a, :ask10_a, :additional1_a, :additional2_a, :ask5_file)
  end

  def load_recruit
    @recruit = Recruit.find(params[:recruit_id])
  end

  def load_apply
    @apply = Apply.find(params[:id])
  end

end
