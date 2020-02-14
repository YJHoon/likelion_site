class GalleriesController < ApplicationController
  
  before_action :authenticate_user!
  before_action :load_room, only: %i[show]

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
    current_user.galleries.create!(gallery_params)
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