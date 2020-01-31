class CommentsController < ApplicationController
  def create
    comment = Comment.new(comment_params)
    comment.user_id = current_user.id
    comment.save!
    # comment = Comments.create(comment_params)
    redirect_to studies_path
  end

  def update
    @comment.update_attribute!(comment_params)
    redirect_to studies_path
  end

  private
  def load_study
    @study = Study.find(params[:id])
  end

  def load_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:body, :commentable_id, :commentable_type, :user_id)
  end
end
