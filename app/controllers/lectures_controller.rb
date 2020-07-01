class LecturesController < ApplicationController
  before_action :authenticate_user!
  before_action :load_lecture, only: %i[show edit update destroy]
  before_action :check_mentor, only: [:new]

  def index
    @lectures = Lecture.order(created_at: :asc)
  end

  def show
    @comment = Comment.new
    @comments = @lecture.comments
                        .page(params[:page])
                        .per(7)
  end

  def new
    @lecture = Lecture.new
  end

  def create
    current_user.lectures.create!(lecture_params)
    redirect_to lectures_path
  end

  private
  
  def load_lecture
    @lecture = Lecture.find(params[:id])
  end

  def lecture_params
      params.require(:lecture).permit(:title, :content, :image, :file)
  end

  def check_mentor
    check_mentor_of @lecture
  end
end
