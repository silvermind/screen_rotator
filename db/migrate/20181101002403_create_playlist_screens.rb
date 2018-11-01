class CreatePlaylistScreens < ActiveRecord::Migration[5.2]
  def change
    create_table :playlist_screens do |t|
      t.references :screen, foreign_key: true
      t.references :playlist, foreign_key: true
      t.integer :interval_sec, null: false, default: 20

      t.timestamps
    end
  end
end
