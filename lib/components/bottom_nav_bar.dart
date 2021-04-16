import 'package:flutter/material.dart';

import 'package:food_delivery_app/styles/styles.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: BackgroundColor.secondaryColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: ButtonColor.primaryColor,
              borderRadius: ContainerBorder.secondaryContainer,
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Icon(
                    Icons.home,
                    color: IconColor.secondaryColor,
                  ),
                ),
                Text(
                  'Home',
                  style: TextFonts.secondaryText,
                ),
              ],
            ),
          ),
          Icon(
            Icons.search,
            color: IconColor.primaryColor,
          ),
          Icon(
            Icons.shopping_bag,
            color: IconColor.primaryColor,
          ),
        ],
      ),
    );
  }
}
