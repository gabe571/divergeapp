class AuthController < ApplicationController
    def login
      # reset_session 
    end
  
    def verify_username 
      @user = User.find_by(name: params[:auth][:username])
      if @user && @user.authenticate(params[:auth][:password])
        session[:user_id] = @user.id
        redirect_to purchases_path
      else
        flash[:message] = "Please try again"
        render :login
      end
    end

#     def create
#       user = User.create(user_path)
#       redirect_to user_path
# end
    def logout
      session.clear
      redirect_to login_path
    end
  end 