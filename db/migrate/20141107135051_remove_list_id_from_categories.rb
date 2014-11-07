class RemoveListIdFromCategories < ActiveRecord::Migration
  def change
      remove_column :categories, :list_id, :integer
      remove_column :lists, :category_id, :integer
      
  end
end
