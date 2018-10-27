class ChaptersController < ApplicationController
  before_action :set_chapter, only: [:show, :edit, :update, :destroy]
  def new
    @mangak = Mangak.find_by id: params[:mangak_id]
    @chapter = Chapter.new
    @image = @chapter.images.build
  end

  def index
    @chapters = Chapter.page(params[:page]).per 10
  end

  def show
    @images = @chapter.images.all
  end

  def edit
  end

  def create
    @mangak = Mangak.find_by id: params[:mangak_id]
    @chapter = @mangak.chapters.create(chapter_params)
    if @chapter.save
      params[:images]["image"].each do |a|
        @image = @chapter.images.create!(:image => a)
      end
      flash[:info] = "Success"
      redirect_to mangak_chapter_path(@mangak, @chapter)
    else
      flash.now[:danger] = "Error"
      render :new
    end
  end

  def update

  end

  def destroy

  end

  private
  def set_chapter
    @chapter = Chapter.find(params[:id])
  end

  def chapter_params
    params.require(:chapter).permit(:name_chapter,:mangak_id, images_attributes: [:id, :chapter_id, :photo])
  end
end
