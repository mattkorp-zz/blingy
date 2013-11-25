class UsersController < ApplicationController
  def create
    @user = User.create params[:user]
    session[:user_id] = @user.id
    redirect_to :root
  end
end
