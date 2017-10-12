class AddFkToAlbums < ActiveRecord::Migration[5.0]
  def change
    add_column :albums, :photo_id, :integer

    add_index :albums, :photo_id
    add_foreign_key :albums, :photos
  end
end
