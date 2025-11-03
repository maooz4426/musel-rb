class CreateMusics < ActiveRecord::Migration[7.0]
  def change
    create_table :music, id: false do |t|
      t.string :id, primary_key: true, limit: 26
      t.string :title, null: false
      t.string :artist, null: false
      t.integer :bpm
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  end
end
