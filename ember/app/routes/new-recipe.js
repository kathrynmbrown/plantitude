export default Ember.Route.extend({
  model: function() {
    return this.store.createRecord('recipe');
  },
  actions: {
    create: function() {
      var newRecipe = this.get('currentModel');
      var controller = this;

      newRecipe.save();
    }
  }
});
