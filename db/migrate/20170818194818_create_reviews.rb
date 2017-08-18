class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :name
      t.string :title
      t.string :content
      t.references :museum
    end
  end
end
