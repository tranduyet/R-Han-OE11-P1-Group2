class ChaptersController < ApplicationController
  def new
    @chapter = Chapter.new
  end

  def create
    @chapter = chapter.new chapter_params
    if @chapter.save
      flash[:info] = "Success"
      redirect_to @chapter
    else
      flash.now[:danger] = "Error"
      render :new
    end
  end

  def show
    @chapter = Chapter.find(params[:id])
  end

  def update
  end

  private

  def chapter_params
     params.require(:mangak).permit(:name, :picture)
  end
end

