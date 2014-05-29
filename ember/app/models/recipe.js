export default DS.Model.extend({
  name: DS.attr(),
  directions: DS.attr(),
  servings: DS.attr(),
  cooking_time: DS.attr(),
  total_calories: DS.attr()
});
