import 'package:airbnb_clone/widgets/Input/search_input.dart';
import 'package:flutter/material.dart';

class FadeAppBar extends StatelessWidget {
  final double scrollOffset;
  const FadeAppBar({
    required this.scrollOffset,
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Container(
        height: 100,
        padding: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 24.0,
        ),
        color: Colors.white.withOpacity((scrollOffset / 350).clamp(0, 1).toDouble()),
        child: const SafeArea(child: SearchInput()),
      ),
    );
  }
}