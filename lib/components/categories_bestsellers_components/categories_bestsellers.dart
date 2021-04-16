import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/categories_bestsellers_components/bestsellers_list.dart';
import 'package:food_delivery_app/models/list_of_recipes.dart';
import 'package:food_delivery_app/models/recipe.dart';
import 'package:food_delivery_app/styles/styles.dart';

class CategoriesAndBestsellers extends StatefulWidget {
  const CategoriesAndBestsellers({
    Key key,
  }) : super(key: key);

  @override
  _CategoriesAndBestsellersState createState() =>
      _CategoriesAndBestsellersState();
}

class _CategoriesAndBestsellersState extends State<CategoriesAndBestsellers> {
  ListOfRecipes foodItems = ListOfRecipes(burgerRecipes: [
    Recipe(
        foodName: 'Cheese burger',
        foodImage: 'images/cheese_burger.jpg',
        preparationTime: '40mins',
        rating: '3.5',
        price: '\$5'),
    Recipe(
        foodName: 'Chicken burger',
        foodImage: 'images/chicken_burger.jpg',
        preparationTime: '40mins',
        rating: '3.5',
        price: '\$5'),
    Recipe(
        foodName: 'Mutton burger',
        foodImage: 'images/mutton_burger.jpg',
        preparationTime: '40mins',
        rating: '3.5',
        price: '\$5'),
    Recipe(
        foodName: 'Beef burger',
        foodImage: 'images/beef_burger.jpg',
        preparationTime: '40mins',
        rating: '3.5',
        price: '\$5'),
  ], meatRecipes: [
    Recipe(
        foodName: 'Fried meat',
        foodImage: 'images/fried_meat.jpg',
        preparationTime: '40mins',
        rating: '13.5',
        price: '\$5'),
    Recipe(
        foodName: 'Burnt meat',
        foodImage: 'images/burnt_meat.jpg',
        preparationTime: '40mins',
        rating: '4.5',
        price: '\$5'),
    Recipe(
        foodName: 'Uncooked meat',
        foodImage: 'images/uncooked_meat.jpg',
        preparationTime: '1hr',
        rating: '6.5',
        price: '\$5'),
    Recipe(
        foodName: 'Just Meat',
        foodImage: 'images/just_meat.jpg',
        preparationTime: '50mins',
        rating: '1.5',
        price: '\$5'),
  ], pizzaRecipes: [
    Recipe(
        foodName: 'Cheese pizza',
        foodImage: 'images/cheese_pizza.jpg',
        preparationTime: '40mins',
        rating: '3.5',
        price: '\$5'),
    Recipe(
        foodName: 'Chicken pizza',
        foodImage: 'images/chicken_pizza.jpg',
        preparationTime: '40mins',
        rating: '3.5',
        price: '\$5'),
    Recipe(
        foodName: 'Mutton pizza',
        foodImage: 'images/mutton_pizza.jpg',
        preparationTime: '40mins',
        rating: '3.5',
        price: '\$5'),
    Recipe(
        foodName: 'Beef pizza',
        foodImage: 'images/beef_pizza.jpg',
        preparationTime: '40mins',
        rating: '3.5',
        price: '\$5'),
  ], chickenRecipes: [
    Recipe(
        foodName: 'Just Chicken',
        foodImage: 'images/just_chicken.jpg',
        preparationTime: '40mins',
        rating: '3.5',
        price: '\$5'),
    Recipe(
        foodName: 'Fried chicken',
        foodImage: 'images/fried_chicken.jpg',
        preparationTime: '40mins',
        rating: '3.5',
        price: '\$5'),
    Recipe(
        foodName: 'Uncooked chicken',
        foodImage: 'images/uncooked_chicken.jpg',
        preparationTime: '40mins',
        rating: '3.5',
        price: '\$5'),
    Recipe(
        foodName: 'Burnt chicken',
        foodImage: 'images/burnt_chicken.jpg',
        preparationTime: '40mins',
        rating: '3.5',
        price: '\$5'),
  ], sandwichRecipes: [
    Recipe(
        foodName: 'Cheese sandwich',
        foodImage: 'images/cheese_sandwich.jpg',
        preparationTime: '40mins',
        rating: '3.5',
        price: '\$5'),
    Recipe(
        foodName: 'Chicken sandwich',
        foodImage: 'images/chicken_sandwich.jpg',
        preparationTime: '40mins',
        rating: '3.5',
        price: '\$5'),
    Recipe(
        foodName: 'Mutton sandwich',
        foodImage: 'images/mutton_sandwich.jpg',
        preparationTime: '40mins',
        rating: '3.5',
        price: '\$5'),
    Recipe(
        foodName: 'Beef sandwich',
        foodImage: 'images/beef_sandwich.jpg',
        preparationTime: '40mins',
        rating: '3.5',
        price: '\$5'),
  ]);
  List<Recipe> currentList;

  @override
  initState() {
    currentList = foodItems.burgerRecipes;
    super.initState();
  }

  changeColor(index) {
    setState(() {
      switch (index) {
        case 0:
          currentList = foodItems.burgerRecipes;
          break;
        case 1:
          currentList = foodItems.meatRecipes;
          break;
        case 2:
          currentList = foodItems.pizzaRecipes;
          break;
        case 3:
          currentList = foodItems.chickenRecipes;
          break;
        case 4:
          currentList = foodItems.sandwichRecipes;
          break;
        case 5:
          currentList = foodItems.burgerRecipes;
          break;
      }
    });
  }

  List<String> foodIcons = [
    'images/003-hamburger.png',
    'images/005-meat.png',
    'images/004-pizza.png',
    'images/002-chicken-leg.png',
    'images/001-sandwich.png',
    'images/006-menu.png'
  ];

  List<String> foodNames = [
    'Burgers',
    'Meat',
    'Pizza',
    'Chicken',
    'Sandwich',
    'View all'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 20),
              child: Text(
                'Categories',
                style: HeaderFonts.secondaryText,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
              height: 200,
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemCount: 6,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      changeColor(index);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage(foodIcons[index]),
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              foodNames[index],
                              style: TextFonts.primaryText,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
          child: Text(
            'Best Seller',
            style: HeaderFonts.secondaryText,
          ),
        ),
        BestsellersList(currentList: currentList),
      ],
    );
  }
}
