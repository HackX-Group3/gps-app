class CreateCategoriesLists < ActiveRecord::Migration
  def change
      create_table :categories_lists, :id => false do |t|
          t.references :categories
          t.references :lists
      end
  end
end
