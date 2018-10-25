class ChaptersController < ApplicationController
  def new
    @chapter = Chapter.new
  end

  def create
    @chapter = chapter.new mangak_params
    if @chapter.save
      flash[:info] = "Success"
      redirect_to @chapter
    else
      flash.now[:danger] = "Error"
      render :new
    end
  end

  def show
    @chapter = Mangak.find(params[:id])
  end

  def update
  end

  private

  def mangak_params
     params.require(:mangak).permit(:name, :picture)
  end
end

