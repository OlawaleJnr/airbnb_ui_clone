import 'package:airbnb_clone/widgets/hero_banner.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          CustomScrollView(
            slivers: [
              HeroBanner(),
            ],
          ),
        ],
      ),
    );
  }
}