class CommentsController < ApplicationController
before_action :logged_in?
  def new
   @comment=Comment.new
  end

  def create
   blog = BlogList.find_by(id: params[:blog_list_id])
    comment = blog.comments.new(comment_params)
    comment.user_id = current_user.id
    if comment.save
      flash[:notice] = "Comment saved!!!"
    else
      flash[:notice] = comment.errors.full_messages
    end
    redirect_to blog
  end

  def destroy
    comment = Comment.find_by(id: params[:id])
    blog = comment.blog_list
    comment.destroy
    flash[:notice] = "Comment deleted successfully"
    redirect_to blog
  end

  private
  def comment_params
    params.require(:comment).permit(:message)
  end
end