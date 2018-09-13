class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show]


  def index
    @artists = Artist.all
  end

  def show
    render :index unless @artist
  end



  private


  def sort_artists
    artists_sorted = Artist.all
  end

  def set_artist
    @artist = Artist.find(params[:id])
  end

end
