import 'package:flutter/material.dart';

import './components/all_components.dart';
import './styles/styles.dart';

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
          backgroundColor: BackgroundColor.primaryColor,
          body: SingleChildScrollView(
            child: Column(
              children: [
                TopNavBar().build(context),
                SizedBox(
                  height: 30,
                ),
                CategoriesAndBestsellers(),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavBar(),
        ),
      ),
    );
  }
}
