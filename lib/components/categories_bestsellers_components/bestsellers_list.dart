import 'package:flutter/material.dart';

import 'package:food_delivery_app/models/recipe.dart';
import 'package:food_delivery_app/styles/styles.dart';



class BestsellersList extends StatelessWidget {
  const BestsellersList({
    Key key,
    @required this.currentList,
  }) : super(key: key);

  final List<Recipe> currentList;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 30, 0, 30),
      height: 200,
      child: ListView.separated(
        padding: EdgeInsets.only(left: 20),
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(width: 16);
        },
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: 50,
                color: TextColor.secondaryColor,
              ),
              Expanded(
                child: Container(
                  width: 250,
                  decoration: BoxDecoration(
                    color: (index % 2 == 0)
                        ? Colors.green[800]
                        : Colors.amber[800],
                    borderRadius: ContainerBorder.primaryContainer,
                  ),
                  child: Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.topCenter,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 45, 0, 0),
                        child: Column(
                          children: [
                            Text(
                              currentList[index].foodName,
                              style: TextStyle(
                                fontSize: 18,
                                color: TextColor.secondaryColor,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(right: 5),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.timer,
                                          color: TextColor.secondaryColor,
                                          size: 14,
                                        ),
                                        Text(
                                          currentList[index]
                                              .preparationTime,
                                          style: TextFonts.tertiaryText,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: IconColor.secondaryColor,
                                    size: 14,
                                  ),
                                  Text(
                                    currentList[index].rating,
                                    style: TextFonts.tertiaryText,
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              color: Colors.white,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(20, 5, 20, 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    currentList[index].price,
                                    style: TextFonts.secondaryText,
                                  ),
                                  Icon(
                                    Icons.add,
                                    color: IconColor.secondaryColor,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: -45,
                        child: Container(
                          height: 80,
                          width: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image:
                                  AssetImage(currentList[index].foodImage),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}