import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PopularPost extends StatelessWidget {
  const PopularPost({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(2, (index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 200,
              child: Stack(
                children: [
                  Image.network(
                    // color: Colors.grey[800],
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                    "https://h5p.org/sites/default/files/h5p/content/825/images/image-53e9e429bba63.jpg",
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: Icon(
                          CupertinoIcons.heart_fill,
                          color: Colors.pink,
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    top: 140,
                    // bottom: 12,
                    child: Container(
                      width: 200,
                      height: 60,
                      color: Color(0x837D7D80),
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
                              Icon(
                                Icons.star_border,
                                color: Colors.amber,
                                size: 16,
                              ),
                              const SizedBox(width: 40),
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
                                      const TextSpan(
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
              ),
            ),
          );
        }),
      ),
    );
  }
}
