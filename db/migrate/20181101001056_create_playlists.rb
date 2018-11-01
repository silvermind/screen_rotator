class CreatePlaylists < ActiveRecord::Migration[5.2]
  def change
    create_table :playlists do |t|
      t.string :name, null: false
      t.integer :default_interval_sec, null: false, default: 20

      t.timestamps
    end
  end
end
