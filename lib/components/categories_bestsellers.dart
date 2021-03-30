import 'package:flutter/material.dart';

class CategoriesAndBestsellers extends StatefulWidget {
  const CategoriesAndBestsellers({
    Key key,
  }) : super(key: key);

  @override
  _CategoriesAndBestsellersState createState() =>
      _CategoriesAndBestsellersState();
}

class _CategoriesAndBestsellersState extends State<CategoriesAndBestsellers> {
  Color cellColor = Colors.amber;

  changeColor(index) {
    setState(() {
      switch (index) {
        case 0:
          cellColor = Colors.red;
          break;
        case 1:
          cellColor = Colors.blue;
          break;
        case 2:
          cellColor = Colors.green;
          break;
      }
    });
  }

  List<Icons> foodIcons = [];

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
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
              height: 200,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemCount: 6,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      GestureDetector(
                        child: Icon(
                          Icons.ac_unit,
                        ),
                        onTap: () {
                          changeColor(index);
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(foodNames[index]),
                      ),
                    ],
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
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
          height: 150,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 60,
                  width: 180,
                  color: cellColor,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
