class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :directions, :servings, :cooking_time, :total_calories
end
