class GalleriesController < ApplicationController
  before_action :authenticate_user!
  before_action :load_room, only: %i[show]

  def index
    @galleries = Gallery.all
    @datelist = @galleries.group_by { |g| g.created_at.to_date.to_s } 
    values = @datelist.values
  end

  def show
  end

  def new
    @gallery = Gallery.new
  end

  def create
    gallery = current_user.galleries.create!(gallery_params)
    redirect_to galleries_path
  end

  private
  def load_gallery
    @gallery = Gallery.find(params[:id])
  end

  def gallery_params
    params.require(:gallery).permit(:gallery_images)
  end
end
