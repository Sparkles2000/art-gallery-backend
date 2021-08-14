class CreateArtworks < ActiveRecord::Migration[5.2]
  def change
    create_table :artworks do |t|
      t.string :name
      t.string :text
      t.integer :published_date
      t.integer :artist_established
      t.belongs_to :artist, foreign_key: true
    end
  end
end
