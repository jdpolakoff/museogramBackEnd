class CreateArtworks < ActiveRecord::Migration[5.1]
  def change
    create_table :artworks do |t|
      t.string :name
      t.string :artist
      t.string :date
      t.string :img_url
      t.string :medium
      t.string :on_display
      t.references :museum
      t.string :category
    end
  end
end
