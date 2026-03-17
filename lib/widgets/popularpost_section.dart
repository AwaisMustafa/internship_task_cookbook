import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'popularpost.dart';

class PopularPostSection extends StatelessWidget {
  const PopularPostSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(2, (index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: PopularPost(widthOfImage: 192, widthOfContainer: 200,),
          );
        }),
      ),
    );
  }
}
