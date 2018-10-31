class MangaksController < ApplicationController
  def new
    @mangak = Mangak.new
  end

  def create
    @mangak = Mangak.new mangak_params
    if @mangak.save
      flash[:info] = "Success"
      redirect_to @mangak
    else
      flash.now[:danger] = "Error"
      render :new
    end
  end

  def show
    @mangak = Mangak.find(params[:id])
  end

  def index
    @mangaks = Mangak.page(params[:page]).per 10
    if params[:search]
      @mangaks = Mangak.search(params[:search]).page(params[:page])
    end
  end

  def update
  end

  def destroy
    if @mangak.destroy
      flash[:success] = "Destroy"
    else
      flash[:danger] = "Delete fail"
    end
     redirect_to users_url
  end

  private

  def mangak_params
     params.require(:mangak).permit(:name, :description, :picture, :author_id, :genre_id)
  end
end
