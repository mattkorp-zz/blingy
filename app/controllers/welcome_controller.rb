class WelcomeController < ApplicationController

  def index
    if current_user
      @user = current_user
      @accounts = current_user.accounts
      @new_account = Account.new(user_id: @user.id)
    else
      @user = User.new
    end
  end

end
