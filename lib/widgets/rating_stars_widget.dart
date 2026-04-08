import 'package:flutter/material.dart';

class RatingStarsWidget extends StatelessWidget {
  const RatingStarsWidget({super.key, required this.starSize});

  final double starSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star, color: Colors.amber, size: starSize),
        Icon(Icons.star, color: Colors.amber, size: starSize),
        Icon(Icons.star, color: Colors.amber, size: starSize),
        Icon(Icons.star, color: Colors.amber, size: starSize),
        Icon(Icons.star_border, color: Colors.amber, size: starSize),
      ],
    );
  }
}
