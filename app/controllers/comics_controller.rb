class ComicsController < ApplicationController

  def index
    @comics = Comic.all
    render :index
  end
  def show
    @comic = Comic.find_by(id: params[:id])
    render :show
  end



end
