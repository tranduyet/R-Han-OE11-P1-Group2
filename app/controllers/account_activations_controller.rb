class AccountActivationsController < ApplicationController
  def edit
    user = User.find_by email: params[:email]
    if user && !user.activated? && user.authenticated?(:vactivation, params[:id])
      user.activate
      log_in user
      flash[:success] = t ".account_activated"
      redirect_to user
    else
      flash[:danger] = t ".invalid"
      redirect_to root_url
    end
  end
end
