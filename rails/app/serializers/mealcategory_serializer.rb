class MealcategorySerializer < ActiveModel::Serializer
  embed :ids, include: true

  attributes :id, :name
  has_many :recipes

end
