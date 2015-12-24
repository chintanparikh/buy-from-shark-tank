class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.integer :season
      t.integer :episode
      t.string :name
      t.float :price
      t.string :image

      t.timestamps null: false
    end
  end
end
