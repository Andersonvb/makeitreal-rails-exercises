class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :name
      t.float :duration
      t.integer :year
      t.string :rating
      t.text :description
      t.string :image_url

      t.timestamps
    end
  end
end
