import 'package:flutter/material.dart';
import 'components/all_components.dart';

class FoodApp extends StatefulWidget {
  @override
  _FoodAppState createState() => _FoodAppState();
}

class _FoodAppState extends State<FoodApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                TopNavBar(),
                SizedBox(
                  height: 30,
                ),
                CategoriesAndBestsellers(),
                BottomNavBar(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
