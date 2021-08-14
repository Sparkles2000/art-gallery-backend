class CreateArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :text
      t.integer :artist_established
      t.belongs_to :gallery, foreign_key: true
    end
  end
end
