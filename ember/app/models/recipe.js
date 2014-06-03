export default DS.Model.extend({
  name: DS.attr('string'),
  directions: DS.attr('string'),
  servings: DS.attr('string'),
  cooking_time: DS.attr('string'),
  total_calories: DS.attr('string'),
  category: DS.attr('string')
});
