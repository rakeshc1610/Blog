class UsersController < ApplicationController
	before_action :get_user_id, only: [:show, :edit, :update]
  before_action :logged_in?, except: [:new]
 	
	def index
	  @users=User.order("created_at DESC").limit(10)
	end
	def new
		@user=User.new
	end
	def create
		
		@user=User.new(user_params)
	  if @user.save
	  	flash[:notice] = "Record Saved Succesfullly"
	    redirect_to action: "show", id: @user.id
  else
	   flash[:notice] = "Error in saving Record"
	   render :new
	  end
	end
	def edit
		
	end
	def update
	  
		if @user.update_attributes(user_params)
			flash[:notice] = "Record updated successfully"
			redirect_to action: "show", id: @user.id
		else
			flash[:notice] = "Error in updating the record"
			render :edit
		end
	end

	def show

		
	end

	def destroy
	end

	private
	def user_params
		
		params.require(:user).permit(:first_name,:last_name,:username,:password,:active,:email)#strong parameters
	end
  def get_user_id
  @user = User.find_by(id: params[:id])
  end
  def logged_in?
  	session[:current_user_id].present?
  	
  end

end
