class BlogListsController < ApplicationController
before_action :logged_in?  
  def index
  	@blogs=BlogList.all
  end
	def new	
		@blog=BlogList.new
	end
	def create
		 #raise params.inspect
		 user = User.find_by(id: session[:current_user_id])
		 blog = user.blog_lists.new(blog_params)
		 if blog.save
		 	 flash[:notice] = "blog saved successfully"
		 	 redirect_to action: :index
		 else
		 	render :new
		 	 	
		end
	end
	def show

		
	end
	private

	def blog_params
		params.require(:blog_list).permit(:name, :content)
	end	
	def logged_in?
		redirect_to new_session_path if session[:current_user_id].blank?
	end
end
