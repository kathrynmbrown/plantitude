export default Ember.ObjectController.extend({
  actions: {
    createRecipe: function() {
      var model = this.get('model');
      model.save();
    }
  }
});
