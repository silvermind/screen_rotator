class CreateScreens < ActiveRecord::Migration[5.2]
  def change
    create_table :screens do |t|
      t.string :link, null: false
      t.string :name, null: false
      t.timestamps
    end
  end
end
