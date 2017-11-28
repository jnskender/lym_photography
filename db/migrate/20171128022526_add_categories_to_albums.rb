class AddCategoriesToAlbums < ActiveRecord::Migration[5.0]
  def change
    add_column :albums, :category, :string
  end
end
