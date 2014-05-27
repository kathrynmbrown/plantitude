import startApp from 'plantitude/tests/helpers/start-app';

var App, server;

module('Integration - Recipe Page', {
  setup: function() {
    App = startApp();
    var recipes = [
      {
        id: 1,
        name: 'Salad'
      },
      {
        id: 2,
        name: 'Lasagna'
      },
      {
        id: 3,
        name: 'Smoothie'
      }
    ];

    server = new Pretender(function() {
      this.get('/api/recipes', function(request) {
        return [200, {"Content-Type": "application/json"}, JSON.stringify({recipes: recipes})];
      });

      this.get('/api/recipes/:id', function(request) {
        var recipe = recipes.find(function(recipe) {
          if (recipe.id === parseInt(request.params.id, 10)) {
            return recipe;
          }
        });

        return [200, {"Content-Type": "application/json"}, JSON.stringify({recipe: recipe})];
      });
    });

  },
  teardown: function() {
    Ember.run(App, 'destroy');
    server.shutdown();
  }
});

test('Should allow navigation to the recipes page from the landing page', function() {
  visit('/').then(function() {
    click('a:contains("Recipes")').then(function() {
      equal(find('h3').text(), 'Recipes');
    });
  });
});

test('Should list all recipes', function() {
  visit('/recipes').then(function() {
    equal(find('a:contains("Salad")').length, 1);
    equal(find('a:contains("Lasagna")').length, 1);
    equal(find('a:contains("Smoothie")').length, 1);
  });
});

test('Should be able to navigate to a recipe page', function() {
  visit('/recipes').then(function() {
    click('a:contains("Salad")').then(function() {
      equal(find('h4').text(), 'Salad');
    });
  });
});

test('Should be able visit a recipe page', function() {
  visit('/recipes/1').then(function() {
    equal(find('h4').text(), 'Salad');
  });
});
