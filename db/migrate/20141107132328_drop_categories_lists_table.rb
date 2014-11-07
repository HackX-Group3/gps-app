class DropCategoriesListsTable < ActiveRecord::Migration
  def change
  	drop_table :categories_lists
  end
end
