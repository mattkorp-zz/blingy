class AccountsController < ApplicationController

  def create
    @account = Account.new params[:account]
    @account.user_id = current_user.id
    @account.save
    redirect_to :root
  end

end
