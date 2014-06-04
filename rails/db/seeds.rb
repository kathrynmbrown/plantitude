breakfast = Mealcategory.create(name: 'Breakfast')
lunch = Mealcategory.create(name: 'Lunch')
dinner = Mealcategory.create(name: 'Dinner')

breakfast.recipes.create(name: "Banana Smoothie")
breakfast.recipes.create(name: "Carrot Smoothie")

lunch.recipes.create(name: "Carrot Salad")

dinner.recipes.create(name: "Grilled Mushrooms")
dinner.recipes.create(name: "Grilled Squash")
dinner.recipes.create(name: "Grilled Peppers")
