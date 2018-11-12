class UsersController < ApplicationController
  def show
    @user  = User.find(params[:id])
    @mangaks = @user.following.paginate(page: params[:page])
  end

  def index
    @q = User.search(params[:q])
    @users = @q.result.paginate(page: params[:page])
  end
end
