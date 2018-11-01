class Playlist < ApplicationRecord

  validates :name, presence: true
  validates :default_interval_sec, presence: true

  has_many :playlist_screens, dependent: :destroy
  has_many :screens, through: :playlist_screens
end
