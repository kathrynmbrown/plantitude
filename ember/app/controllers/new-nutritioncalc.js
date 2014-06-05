export default Ember.ObjectController.extend({

    actions: {

    calculate: function(){
      var weight = this.get('weight'),
          runduration = this.get('runduration'),
          cycleduration = this.get('cycleduration');
    }
  }
});
