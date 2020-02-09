class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @comment = Comment.new(comment_params)
    @comment.user = current_user

    if @comment.save
      commentable = @comment.commentable
      @comments_count = commentable.comments.count

      respond_to do |format|
        format.js
      end
    else
      respond_to do |format|
        format.html { redirect_to root_path, notice: "잘못 된 요청입니다." }
      end
    end
  end

  def update
    @comment.update_attribute!(comment_params)
    redirect_to lectures_path
  end

  def destroy
    @comment = Comment.find params[:id]
    if @comment.destroy
      respond_to do |format|
        format.js
      end
    else
      respond_to do |format|
        format.html { redirect_to root_path, notice: "잘못 된 요청입니다." }
      end
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :commentable_id, :commentable_type, :user_id)
  end
end
