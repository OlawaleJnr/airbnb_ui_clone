import 'package:airbnb_clone/models/city.dart';
import 'package:airbnb_clone/widgets/Card/city_card.dart';
import 'package:flutter/material.dart';

/// `CitiesGrid` is a `StatelessWidget` that displays a `GridView` of `CityCard`
class CitiesGrid extends StatelessWidget {
  const CitiesGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        childAspectRatio: 2.5 / 1,
        crossAxisCount: 2,
      ),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return CityCard(cities[index]);
        },
        childCount: cities.length,
      ),
    );
  }
}