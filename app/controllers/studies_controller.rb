class StudiesController < ApplicationController
  before_action :authenticate_user!
  before_action :load_study, only: %i[show edit update destroy]
  
  def index
    @studies = Study.all
  end

  def show
    @comment = Comment.new
    @comments = @study.comments
    @comments = @comments.page(params[:page]).per(3)
  end

  def new
    @study = Study.new
  end

  def create
    study = current_user.studies.create!(study_params)
    redirect_to studies_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def load_study
    @study = Study.find(params[:id])
  end

  def study_params
    params.require(:study).permit(:title, :content, :study_images)
  end
end
