class BlogListsController < ApplicationController
before_action :logged_in?  
before_action :current_user, only: [:create, :my_blogs]
  def index
  	@blogs=BlogList.paginate(page: params[:page]).all
  end
	def new	
		@blog=BlogList.new
	end
	def create
		blog = @user.blog_lists.new(blog_params)
		if blog.save
		 	flash[:notice] = "blog saved successfully"
		 	redirect_to action: "show", id: blog.id
		else
		 	render :new
		end
	end
	def show
    @blog=BlogList.find_by(id: params[:id])
  end
	def my_blogs
		@my_blogs = @user.blog_lists.paginate(page: params[:page])
	end
	private
	def current_user
		@user=User.find_by(id: session[:current_user_id])
	end
  def blog_params
		params.require(:blog_list).permit(:name, :content)
	end	
end
