class CreateAlbums < ActiveRecord::Migration[7.0]
  def change
    create_table :albums do |t|
      t.string :name
      t.string :image_url
      t.date :released_at
      t.belongs_to :artist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
