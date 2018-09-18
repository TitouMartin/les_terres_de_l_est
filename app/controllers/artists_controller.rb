class ArtistsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_artist, only: [:show]


  def index
    @artists = Artist.all

# -- delete doublons in artists albums
    # @artist_albums = []
    # Artist.all.each do |artist|
    #   artist.albums.each do |album|
    #     @artist_albums << album
    #   end
    # end
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
