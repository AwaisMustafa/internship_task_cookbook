import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PopularPost extends StatelessWidget {
  const PopularPost({
    super.key,
    required this.widthOfImage,
    required this.widthOfContainer,
  });

  final double widthOfContainer;
  final double widthOfImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widthOfContainer, //200
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(18)),
      child: Stack(
        children: [
          Container(
            width: widthOfImage, //192
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

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(CupertinoIcons.heart_fill, color: Colors.pink),
              ),
            ],
          ),
          Positioned(
            top: 142,
            // bottom: 12,
            child: Container(
              width: 192,
              height: 58,
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
                      fontSize: 19,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 15),
                      Icon(Icons.star, color: Colors.amber, size: 15),
                      Icon(Icons.star, color: Colors.amber, size: 15),
                      Icon(Icons.star, color: Colors.amber, size: 15),
                      Icon(Icons.star_border, color: Colors.amber, size: 15),
                      const SizedBox(width: 30),
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
    );
  }
}
