import 'package:airbnb_clone/models/location.dart';
import 'package:flutter/material.dart';

class LiveAnyWhereCard extends StatelessWidget {
  final Location location;
  const LiveAnyWhereCard(this.location, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 400,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.network(
              location.imageUrl,
              width: 300,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            location.title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.black.withOpacity(.9),
            ),
          ),
        ],
      ),
    );
  }
}