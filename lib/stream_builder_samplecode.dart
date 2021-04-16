// class CategoriesAndBestsellers extends StatefulWidget {
//   // const CategoriesAndBestsellers({
//   //   Key key,
//   // }) : super(key: key);

//   @override
//   _CategoriesAndBestsellersState createState() =>
//       _CategoriesAndBestsellersState();
// }

// class _CategoriesAndBestsellersState extends State<CategoriesAndBestsellers> {
//   Color cellColor = Colors.amber;
//   BehaviorSubject<Color> cellColorBS;



//   changeColor(index) {
//     //setState(() {
//     switch (index) {
//       case 0:
//         cellColor = Colors.red;
//         break;
//       case 1:
//         cellColor = Colors.blue;
//         break;
//       case 2:
//         cellColor = Colors.green;
//         break;
//       case 3:
//         cellColor = Colors.purple;
//         break;
//       case 4:
//         cellColor = Colors.yellow;
//         break;
//       case 5:
//         cellColor = Colors.black;
//         break;
//     }
//     cellColorBS.add(cellColor);
//     // });
//   }

//   List<String> foodIcons = [
//     'images/003-hamburger.png',
//     'images/005-meat.png',
//     'images/004-pizza.png',
//     'images/002-chicken-leg.png',
//     'images/001-sandwich.png',
//     'images/006-menu.png'
//   ];

//   List<String> foodNames = [
//     'Burgers',
//     'Meat',
//     'Pizza',
//     'Chicken',
//     'Sandwich',
//     'View all'
//   ];

//   @override
//   void initState() {
//     cellColorBS = BehaviorSubject<Color>.seeded(cellColor);
//     super.initState();
//   }



//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               padding: const EdgeInsets.fromLTRB(20, 0, 0, 20),
//               child: Text(
//                 'Categories',
//                 style: TextStyle(
//                   fontSize: 17,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
//               height: 200,
//               child: GridView.builder(
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 3,
//                 ),
//                 itemCount: 6,
//                 itemBuilder: (BuildContext context, int index) {
//                   return GestureDetector(
//                     onTap: () {
//                       changeColor(index);
//                     },
//                     child: Column(
//                       children: [
//                         Image(
//                           image: AssetImage(foodIcons[index]),
//                           height: 30,
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(5.0),
//                           child: Text(foodNames[index]),
//                         ),
//                       ],
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//         Padding(
//           padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
//           child: Text(
//             'Best Seller',
//             style: TextStyle(
//               fontSize: 17,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//         Container(
//           margin: EdgeInsets.fromLTRB(0, 30, 0, 30),
//           height: 200,
//           child: StreamBuilder(
//             stream: cellColorBS,
//             builder: (context, snapshot) {
//               return ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemCount: 4,
//                 itemBuilder: (context, index) {
//                   return Padding(
//                     padding: const EdgeInsets.all(20.0),
//                     child: Stack(
//                       clipBehavior: Clip.none,
//                       children: [
//                         Container(
//                           width: 250,
//                           decoration: BoxDecoration(
//                             color: snapshot.data,
//                             borderRadius: BorderRadius.circular(20),
//                           ),
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Container(
//                                 margin: EdgeInsets.fromLTRB(0, 45, 0, 0),
//                                 child: Column(
//                                   children: [
//                                     Text(
//                                       'Fish with XO Sauce',
//                                       style: TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         color: Colors.white,
//                                       ),
//                                     ),
//                                     Row(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.center,
//                                       children: [
//                                         Icon(
//                                           Icons.ac_unit,
//                                           color: Colors.white,
//                                         ),
//                                         Text(
//                                           '30-40 mins',
//                                           style: TextStyle(
//                                             color: Colors.grey[300],
//                                           ),
//                                         ),
//                                         Icon(
//                                           Icons.star,
//                                           color: Colors.white,
//                                         ),
//                                         Text(
//                                           '4.8',
//                                           style: TextStyle(
//                                             color: Colors.grey[300],
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                     Divider(
//                                       color: Colors.white,
//                                     ),
//                                     Padding(
//                                       padding: const EdgeInsets.fromLTRB(
//                                           20, 5, 20, 0),
//                                       child: Row(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.spaceBetween,
//                                         children: [
//                                           Text(
//                                             '\$35',
//                                             style: TextStyle(
//                                               color: Colors.white,
//                                             ),
//                                           ),
//                                           Icon(
//                                             Icons.add,
//                                             color: Colors.white,
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                         Positioned(
//                           top: -40,
//                           right: 80,
//                           child: ClipRRect(
//                             borderRadius: BorderRadius.circular(20),
//                             child: Image.asset(
//                               'images/newall.png',
//                               height: 80,
//                               width: 100,
//                               fit: BoxFit.fill,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   );
//                 },
//               );
//             },
//           ),
//         ),
//       ],
//     );
//   }
// }
