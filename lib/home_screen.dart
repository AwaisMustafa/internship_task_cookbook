import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

List<String> categoryName = ["All", "Breakfast", "Lunch", "Dinner", "Dessert"];

int selectedIndex = 0;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.grey[800],
        title: Text("CookBook", style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.heart_fill)),
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            spacing: 20,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Row(
                  spacing: 5,
                  children: [Icon(Icons.search), Text("Search recipes...")],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(4, (index) {
                    final isSelected = index == selectedIndex;
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 7),
                        // decoration: BoxDecoration(
                        //   color: isSelected
                        //       ? const Color(0xFF5750D4)
                        //       : Colors.grey[800],
                        // ),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 10,
                          ),
                          decoration: BoxDecoration(
                            color: isSelected
                                ? Color(0xFF5750D4)
                                : Colors.grey[800],
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Text(categoryName[index]),
                        ),
                      ),
                    );
                  }),
                ),
              ),
              Text(
                "Featured",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              Stack(
                children: [
                  Image.network(
                    // color: Colors.grey[800],
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                    "https://h5p.org/sites/default/files/h5p/content/825/images/image-53e9e429bba63.jpg",
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
              Text(
                "Popular Recipes",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              SingleChildScrollView(
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                          size: 16,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                          size: 16,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                          size: 16,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                          size: 16,
                                        ),
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
                                            borderRadius: BorderRadius.circular(
                                              12,
                                            ),
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
                                                  alignment:
                                                      PlaceholderAlignment
                                                          .middle,
                                                ),
                                                const TextSpan(
                                                  text: ' 45m',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
