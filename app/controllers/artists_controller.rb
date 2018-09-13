class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show]
  before_action :artist_tracks, only: [:show]

  def index
    @artists = Artist.all
  end

  def show
    render :index unless @artist
    @artist_tracks = artist_tracks
  end



  private


  def sort_artists
    artists_sorted = Artist.all
  end

  def set_artist
    @artist = Artist.find(params[:id])
  end

  def artist_tracks
    artist_tracks = Track.where(artist: @artist)
  end

end
