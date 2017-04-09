class SessionsController < ApplicationController
  def new
    render "new.html.erb"
  end
  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.user_id
      flash[:success] = "Successfully logged in!"
      redirect_to "/"
    else
      fash[:warning] = "Invalid email or password!"
      redirect_to "/login"
    end
  end
  def destroy
    session[:user_id] = nil
    flash[:success] = "You logged out alright!"
    redirect_to "/login"
  end
end
