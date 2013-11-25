class WelcomeController < ApplicationController

  def index
    if current_user
      @user = current_user
      @accounts = current_user.accounts
    else
      @user = User.new
    end
  end

end
