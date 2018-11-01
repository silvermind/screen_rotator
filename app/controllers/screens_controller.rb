class ScreensController < ApplicationController

  # Shows a single Screen - no context to a run
  def show
    @screen = Screen.find(params[:id])
  end
end