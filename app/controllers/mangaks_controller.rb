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

  def update
  end

  private

  def mangak_params
     params.require(:mangak).permit(:name, :description, :picture)
  end
end
