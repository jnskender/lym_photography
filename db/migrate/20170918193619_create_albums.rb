class CreateAlbums < ActiveRecord::Migration[5.0]
  def change
    create_table :albums do |t|
      t.string :title
      t.string :location
      t.string :cover_photo

      t.timestamps
    end
  end
end
