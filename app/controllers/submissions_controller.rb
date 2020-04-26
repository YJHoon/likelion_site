class SubmissionsController < ApplicationController
  before_action :authenticate_user!
  before_action :load_assignment, except: %i[wish_toggle]
  before_action :load_submission, only: %i[show edit update destroy wish_toggle]
  before_action :check_ownership!, only: %i[edit update destroy]

  def index
    if !current_user.mentor? && (@assignment.end_at > Time.zone.now)
      redirect_back(fallback_location: root_path, alert: "과제 제출 리스트는 제출기간이 끝나고 확인하실 수 있습니다.")
    end
    @submissions = @assignment.submissions
  end

  def show
    attach = ActiveStorage::Attachment.all
    
    blob = ActiveStorage::Blob.all

    @file = attach.where(record_id: @submission.id)
    @comment = Comment.new
    @comments = @submission.comments
                        .page(params[:page])
                        .per(7)
    
    @user = current_user
    if !@user.mentor?
      redirect_to submissions_path, alert: "다른사람의 과제는 제출기간이 끝나고 확인하실 수 있습니다." if (@user != @submission.user) || @assignment.end_at > Time.zone.now
    end

    if @submission.user != @user
      @submission.view_count += 1
      @submission.save
    end
  end

  def new
    if @assignment.end_at > Time.zone.now && @assignment.start_at < Time.zone.now
      @submission = Submission.new
    else
      redirect_to assignments_path, alert: "과제 제출기한이 아닙니다. 운영진에게 문의하세요."
    end
  end

  def create
    if @assignment.end_at > Time.zone.now && @assignment.start_at < Time.zone.now
      submission = @assignment.submissions.new(submission_params)
      submission.user = current_user
      submission.save!

      redirect_to assignments_path(@assignment)
    else
      redirect_to root_path, alert: "과제 제출기한이 아닙니다. 운영진에게 문의하세요."
    end
  end

  def edit
  end

  def update
    if @assignment.end_at > Time.zone.now
      if @assignment.update(set_params)
        redirect_to assignment_submission_path(@assignment, @submission), notice: "과제가 성공적으로 수정되었습니다."
      else
        redirect_to root_path, alert: "잘못 된 요청입니다."
      end
    else
      redirect_to root_path, alert: "과제 제출기한이 아닙니다. 운영진에게 문의하세요."
    end
  end

  def destroy
    if @submission.destroy
      redirect_to assignment_subissions_path(@assignment), notice: "해당 과제가 성공적으로 삭제 되었습니다."
    else
      redirect_to root_path, alert: "잘못 된 요청입니다."
    end
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
    params.require(:submission).permit(:title, :description, :url, :image)
  end

  def check_ownership!
    if !current_user.mentor?
      redirect_to root_path, alert: "잘못 된 요청입니다." if current_user != @submission.user
    end
  end


end
