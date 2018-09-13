class AlbumsController < ApplicationController
  before_action :sort_albums, only: [:index]
  before_action :set_album, only: [:show]

  def index
    @albums = @albums_sorted
  end

  def show
    render :index unless @album
  end


  private

  def sort_albums
    @albums_sorted = Album.all.sort_by{ |a| a.name.downcase }
   end

  def set_album
    @album = Album.find(params[:id])
  end

end
