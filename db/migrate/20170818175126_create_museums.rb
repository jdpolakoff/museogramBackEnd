class CreateMuseums < ActiveRecord::Migration[5.1]
  def change
    create_table :museums do |t|
      t.string :name
      t.string :address
      t.string :description
      t.string :photo_url
      t.string :link_out
    end
  end
end
