class CommentsController < ApplicationController
before_action :logged_in?
  def new
	  @comment=Comment.new
  end

  def create	
	  raise params.inspect
	  blog = BlogList.find_by(id: session[:current_user_id])
	  message = blog.comments.new()
	  if message.save
		flash[:notice] = "comment posted"
	  end
  end
end