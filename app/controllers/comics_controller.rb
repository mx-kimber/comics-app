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
      title: title = params[:title],
      writer: writer = params[:writer],
      illustrator: illustrator = params[:illustrator],
      year: year = params[:year],
      genre: genre = params[:genre],
      image_url: image_url = params[:image_url]
    )
    @comic.save
    render :show
  end

  def update
    @comic = Comic.find_by(id: params[:id])
    @comic.title = params[:title] || @comic.title
    @comic.writer = params[:writer] || @comic.writer
    @comic.illustrator = params[:illustrator] || @comic.illustrator
    @comic.year = params[:year] || @comic.year
    @comic.genre = params[:genre] || @comic.genre
    @comic.image_url = params[:image_url] || @comic.image_url

    @comic.save
    render :show
  end

  def destroy
    @comic = Comic.find_by(id: params[:id])
    @comic.destroy
    render json: {message: "entry destroyed sucessfully"}
  end


end
