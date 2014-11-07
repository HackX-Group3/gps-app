class CreateCategoriesLists < ActiveRecord::Migration
  def change
      create_table :categories_lists, :id => false do |t|
          t.references :category
          t.references :list
      end
  end
end
