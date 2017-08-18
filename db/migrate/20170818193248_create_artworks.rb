class CreateArtworks < ActiveRecord::Migration[5.1]
  def change
    create_table :artworks do |t|
      t.string :name
      t.string :date
      t.string :description
      t.string :thumbnail_url
      t.string :img_url
      t.string :medium
      t.boolean :on_display
      t.references :museum
    end
  end
end
