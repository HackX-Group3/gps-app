class CreateMaps < ActiveRecord::Migration
  def change
    create_table :maps do |t|
      t.integer :nb_categories
      t.string :magasin
      t.string :image

      t.timestamps
    end
  end
end
