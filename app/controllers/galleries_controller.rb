class GalleriesController < ApplicationController
  
  before_action :authenticate_user!
  before_action :load_gallery, only: %i[show]

  def index
    @galleries = Gallery.all
    @galleries = @galleries.includes(:tags).where(tags: {name: params[:tags]}) if params[:tags].present?
    @datelist = @galleries.group_by { |g| g.created_at.to_date.to_s } 

  end
  
  def show
  end
  
  def tag_page
    @gallery = Gallery.joins(:tags).where(tags: {name: 'hello'})
  end

  def new
    @gallery = Gallery.new
  end

  def create
    @result = false
    @gallery = current_user.galleries.new(gallery_params)
    if @gallery.save
      @result = true
      flash[:notice] = "사진 업로드가 완료되었습니다."
    end
    redirect_to galleries_path
  end

  private
  
  def load_gallery
    @gallery = Gallery.find(params[:id])
  end

  def gallery_params
    params.require(:gallery).permit(:image, :tag_list)

  end
end