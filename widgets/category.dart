import 'package:flutter/material.dart';
import './category_card.dart';

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CategoryCard(
              Icon(
                Icons.smartphone,
                size: 40,
              ),
              'Smartphones'),
          CategoryCard(
              Icon(
                Icons.system_security_update_good_sharp,
                size: 40,
              ),
              'Casings'),
          CategoryCard(
              Icon(
                Icons.panorama_wide_angle_select_sharp,
                size: 40,
              ),
              'Powerbanks'),
          CategoryCard(
              Icon(
                Icons.battery_charging_full,
                size: 40,
              ),
              'Chargers'),
          CategoryCard(
              Icon(
                Icons.watch_outlined,
                size: 40,
              ),
              'SmartWatches'),
          CategoryCard(
              Icon(
                Icons.headphones,
                size: 40,
              ),
              'Accesories'),
        ],
      ),
    );
  }
}
