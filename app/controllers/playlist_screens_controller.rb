# frozen_string_literal: true

class PlaylistScreensController < ApplicationController
  # Shows a single Screen - no context to a run
  def show
    playlist = Playlist.find(params[:playlist_id])
    @playlist_screen = playlist.playlist_screens.where(screen_id: params[:id]).first

    @next_playlist_screen = playlist.playlist_screens.where('id > ?', @playlist_screen.id).order('id ASC').first || playlist.playlist_screens.order('id ASC').first
  end
end
