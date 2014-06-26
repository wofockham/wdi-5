class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name
      t.decimal :price
      t.integer :album_id
      t.integer :artist_id
      t.string :file
      t.string :artwork
      t.timestamps
    end
  end
end
