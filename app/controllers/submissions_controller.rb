class SubmissionsController < ApplicationController
  before_action :authenticate_user!
  before_action :load_assignment, except: %i[wish_toggle]
  before_action :load_submission, only: %i[show edit update wish_toggle]

  def index
    if !current_user.mentor? && (@assignment.end_at > Time.zone.now)
      redirect_back(fallback_location: root_path, notice: "과제 제출 리스트는 제출기간이 끝나고 확인하실 수 있습니다.")
    end
    @submissions = @assignment.submissions
  end

  def show
    @comment = Comment.new
    @comments = @submission.comments
                        .page(params[:page])
                        .per(10)
    
    @user = current_user
    if !@user.mentor?
      redirect_to submissions_path, notice: "다른사람의 과제는 제출기간이 끝나고 확인하실 수 있습니다." if (@user != @submission.user) || @assignment.end_at > Time.zone.now
    end

    if @submission.user != @user
      @submission.view_count += 1
      @submission.save
    end
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
    params.require(:submission).permit(:title, :description, :url, :image)
  end
end
