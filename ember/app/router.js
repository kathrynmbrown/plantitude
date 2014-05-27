var Router = Ember.Router.extend({
  location: ENV.locationType
});

Router.map(function() {
  this.route('about');
  this.resource('recipes', function() {
    this.route('show', {path: ':recipe_id'});
  });
});

export default Router;
