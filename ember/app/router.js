var Router = Ember.Router.extend({
  location: ENV.locationType
});

Router.map(function() {
  this.route('about');
  this.resource('recipes');
  this.resource('new-recipe', { path: '/recipes/new' });
  this.resource('recipe', { path: '/recipes/:id' });
});

export default Router;
