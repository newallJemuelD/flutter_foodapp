import 'package:flutter/material.dart';

import 'package:food_delivery_app/styles/styles.dart';


class TopNavBar{
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Deliver to',
                style: TextFonts.primaryText,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Text(
                  'Sesame street',
                  style: HeaderFonts.primaryText,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 90,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
            ),
            image: DecorationImage(
              image: AssetImage('images/newall.png'),
              fit: BoxFit.cover,
              alignment: Alignment(-0.7, -0.7),
            ),
          ),
        ),
      ],
    );
  }
}
