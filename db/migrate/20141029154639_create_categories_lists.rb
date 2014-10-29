class CreateCategoriesLists < ActiveRecord::Migration
  def change
    create_table :categories_lists, :id => false do |t|
    	t.references :list
    	t.references :category
    end
  end
end
