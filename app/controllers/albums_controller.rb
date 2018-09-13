class AlbumsController < ApplicationController
  before_action :sort_albums, only: [:index]
  before_action :set_album, only: [:show]
  before_action :album_tracks, only: [:show]
  before_action :album_artist, only: [:show]

  def index
    @albums = @albums_sorted
  end

  def show
    render :index unless @album
    @album_tracks = album_tracks
    @album_artist = album_artist
  end


  private

  def sort_albums
    @albums_sorted = Album.all.sort_by{ |a| a.name.downcase }
   end

  def set_album
    @album = Album.find(params[:id])
  end

  def album_tracks
    album_tracks = Track.where(album: @album)
  end

  def album_artist
    album_artist = []
    Track.where(album: @album).each do |track|
      album_artist << track.artist
    end
  end
end
