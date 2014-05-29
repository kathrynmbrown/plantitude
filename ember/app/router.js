var Router = Ember.Router.extend({
  location: ENV.locationType
});

Router.map(function() {
  this.route('about');
  this.resource('recipes', function() {
    this.route('show', {path: ':recipe_id'});
    this.route('new_recipe', { path: ':new_recipe' });
  });
});

export default Router;
