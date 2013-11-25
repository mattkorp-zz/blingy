class SessionController < ApplicationController
  def create
    user = User.where(email: params[:email]).first
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
    else
      flash[:error] = "Invalid email or password"
    end
    redirect_to root_url
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "successfully logged out of this super secure site"
  end
end
