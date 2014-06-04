var Router = Ember.Router.extend({
  location: ENV.locationType
});

Router.map(function() {
  this.route('about');
  this.route('nutritioncalc');
  this.resource('tips');
  this.resource('recipes');
  this.resource('new-recipe', { path: '/recipes/new' });
  this.resource('recipe', { path: '/recipes/:id' });
  this.resource('mealcategories');
  this.resource('mealcategory', { path: '/mealcategories/:id' });
});

export default Router;
