export default Ember.ObjectController.extend({
    actions: {
    createRecipe: function() {
      var model = this.get('model');
      var controller = this;

      model.save()
      .then(function() {
        controller.transitionToRoute('recipe', model);
      });
    }
  }
});
