class UserMailer < ApplicationMailer
	default from: "noreply_blog@yopmail.com"
	def welcome(user)
    @user = user
    @url  = 'http://localhost:3000'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end
