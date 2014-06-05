class CreateNutritioncalcs < ActiveRecord::Migration
  def change
    create_table :nutritioncalcs do |t|
      t.string :carbgrams

      t.timestamps
    end
  end
end
