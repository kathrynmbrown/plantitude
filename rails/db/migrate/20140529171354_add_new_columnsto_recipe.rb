class AddNewColumnstoRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :directions, :text
    add_column :recipes, :servings, :integer
    add_column :recipes, :cooking_time, :integer
    add_column :recipes, :total_calories, :integer
  end
end
