class SessionsController < ApplicationController
  def new
  end
  def create
  
  	user = User.find_by(username: params[:username], password: params[:password])
  	if user
  		flash[:notice]="Login Successful"
  		session[:current_user_id] = user.id
  		redirect_to controller:  :users, action: :show, id: user.id
  	else
  		flash[:notice]="Invalid Credentials"
  		redirect_to action: :new
    end
  end
end
