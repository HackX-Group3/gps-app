class Changename < ActiveRecord::Migration
  def change
      rename_column :categories_lists, :lists_id, :list_id
      rename_column :categories_lists, :categories_id, :category_id
  end
end
