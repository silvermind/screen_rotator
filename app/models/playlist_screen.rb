# frozen_string_literal: true

class PlaylistScreen < ApplicationRecord
  belongs_to :screen
  belongs_to :playlist
end
