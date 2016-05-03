class UsersController < ApplicationController
	def index
	  @users=User.all
	end
	def new
		@user=User.new
	end
	def create
		
		@user=User.new(user_params)
	  if @user.save
	  	flash[:notice] = "Record Saved Succesfullly"
	    redirect_to action: "index"
	  else
	   flash[:notice] = "Error in saving Record"
	   render :new
	  end
	end
	def edit
	end
	def update
	end
	def show
	end

	def destroy
	end

	private
	def user_params
		
		params.require(:user).permit(:first_name,:last_name,:username,:password,:active,:email)#strong parameters
	end


end
