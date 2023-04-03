class ComicsController < ApplicationController

  def index
    @comics = Comic.all
    render :index
  end

  def show
    @comic = Comic.find_by(id: params[:id])
    render :show
  end

  def create
    @comic = Comic.new(
      comic: title = params[:title]
      comic: writer = params[:writer]
      comic: illustrator = params[:illustrator]
      comic: year = params[:year]
      comic: genre = params[:genre]
      comic: image_url = params[:image_url]
    )
    @comic.save
    render :show
  end


end
