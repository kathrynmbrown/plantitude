class AddMealCategoryAssociation < ActiveRecord::Migration
  def change
    add_reference :recipes, :mealcategory, index: true
  end
end
