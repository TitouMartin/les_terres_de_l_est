class ArtistsController < ApplicationController
  before_action :set_atist, only: [:show]
  before_action :artist_tracks, only: [:show]
  before_action :artist_albums, only: [:show]
  def index
    @artists = artists_sorted
  end

  def show
    render :index unless @artist
    @artist_tracks = artist_tracks
    @artist_albums = artist_albums
  end



  private


  def sort_artists
    artists_sorted = Artist.all.sort_by!{ |a| a.name.downcase }
  end

  def set_artist
    @artist = Artist.find(params[:id])
  end

  def artist_tracks
    artist_tracks = Track.where(artist: @artist)
  end

  def artist_albums
    artist_albums = artist_tracks.album
  end

end
