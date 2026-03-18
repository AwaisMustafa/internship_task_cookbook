import 'package:flutter/material.dart';

class FeaturedPost extends StatelessWidget {
  const FeaturedPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Image.network(
        //   // color: Colors.grey[800],
        //   width: 200,
        //   height: 200,
        //   fit: BoxFit.cover,
        //   "https://h5p.org/sites/default/files/h5p/content/825/images/image-53e9e429bba63.jpg",
        // ),
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: NetworkImage(
                "https://h5p.org/sites/default/files/h5p/content/825/images/image-53e9e429bba63.jpg",
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 140,
          // bottom: 12,
          child: Container(
            width: 200,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0x837D7D80),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Chicken Tikka",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.star, color: Colors.amber, size: 16),
                    Icon(Icons.star, color: Colors.amber, size: 16),
                    Icon(Icons.star, color: Colors.amber, size: 16),
                    Icon(Icons.star, color: Colors.amber, size: 16),
                    Icon(Icons.star_border, color: Colors.amber, size: 16),
                    SizedBox(width: 40),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            WidgetSpan(
                              child: Icon(
                                Icons.schedule,
                                size: 14,
                                color: Colors.white,
                              ),
                              alignment: PlaceholderAlignment.middle,
                            ),
                            TextSpan(
                              text: ' 45m',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
