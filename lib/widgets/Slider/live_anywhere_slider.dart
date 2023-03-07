import 'package:airbnb_clone/models/location.dart';
import 'package:airbnb_clone/widgets/Card/live_anywhere_card.dart';
import 'package:flutter/material.dart';

class LiveAnyWhereSlider extends StatelessWidget {
  const LiveAnyWhereSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 500,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: locations.length,
          itemBuilder: ((context, index) {
            return LiveAnyWhereCard(locations[index]);
          }),
        ),
      ),
    );
  }
}

