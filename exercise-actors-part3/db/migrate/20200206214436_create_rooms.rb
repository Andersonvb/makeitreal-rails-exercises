class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.string :title
      t.text :description
      t.integer :beds
      t.integer :guests
      t.string :image_url
      t.timestamps
    end
  end
end
