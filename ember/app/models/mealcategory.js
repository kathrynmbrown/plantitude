export default DS.Model.extend({
  name: DS.attr('string'),
  recipes: DS.hasMany('recipe')
});
