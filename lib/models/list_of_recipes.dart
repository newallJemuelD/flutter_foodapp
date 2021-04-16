import './recipe.dart';

class ListOfRecipes {
  List<Recipe> burgerRecipes;
  List<Recipe> meatRecipes;
  List<Recipe> pizzaRecipes;
  List<Recipe> chickenRecipes;
  List<Recipe> sandwichRecipes;
  ListOfRecipes({
    this.burgerRecipes,
    this.meatRecipes,
    this.pizzaRecipes,
    this.chickenRecipes,
    this.sandwichRecipes,
  });
}