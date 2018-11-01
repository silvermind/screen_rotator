# frozen_string_literal: true

class Screen < ApplicationRecord
  validates :name, presence: true
  validates :link, presence: true

  has_many :playlist_screens, dependent: :destroy
  has_many :playlists, through: :playlist_screens
end
