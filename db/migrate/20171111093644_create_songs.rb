class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.references :artist, foreign_key: true
      t.string :name
      t.integer :duration
      t.string :link

      t.timestamps
    end
  end
end
