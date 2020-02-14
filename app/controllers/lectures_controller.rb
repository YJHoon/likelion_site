class LecturesController < ApplicationController
  before_action :authenticate_user!
  before_action :load_lecture, only: %i[show edit update destroy]

  def index
    @lectures = Lecture.all
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
    byebug
    current_user.lectures.create!(lecture_params)
    redirect_to lectures_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  
  def load_lecture
    @lecture = Lecture.find(params[:id])
  end

  def lecture_params
      params.require(:lecture).permit(:title, :content, :image)
  end
      
end
