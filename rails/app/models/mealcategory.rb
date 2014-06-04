class Mealcategory < ActiveRecord::Base
  has_many :recipes
end
