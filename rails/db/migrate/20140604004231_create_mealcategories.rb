class CreateMealcategories < ActiveRecord::Migration
  def change
    create_table :mealcategories do |t|
      t.string :name

      t.timestamps
    end
  end
end
