class CommentsController < ApplicationController
def new
	@comment=Comment.new
end
def create
		 
		 blog = BlogList.find_by(id: session[:current_user_id])
		 message = blog.comments.new(comment_params)
		 if message.save
		 	 flash[:notice] = "comment posted"
		 	 	
		end
end
		private

	def comment_params
		params.require(:comment).permit(:message)
	end	
end