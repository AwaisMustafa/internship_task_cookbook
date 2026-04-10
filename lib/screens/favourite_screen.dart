import 'package:flutter/material.dart';
import '../widgets/popularpost.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.grey[800],
        title: Text(
          "Favourites",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: Colors.grey[600],
            ),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.filter_list_outlined),
                ),
                Text("Cook Time (low -> high)"),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.keyboard_arrow_down, color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 3,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 6,
                mainAxisSpacing: 8,
                childAspectRatio: 200 / 210,
              ),
              itemCount: 4,
              itemBuilder: (context, index) {
                return Center(
                  child: PopularPost(
                    widthOfImage: 192,
                    widthOfContainer: 200,
                    networkImage:
                        // mealsFuture.strSource
                        'https://h5p.org/sites/default/files/h5p/content/825/images/image-53e9e429bba63.jpg',
                    postTitle: 'Chicken Tikka',
                  ),
                );
              },
            ),
          ),
          Expanded(
            flex: 2,
            child: PopularPost(
              widthOfImage: 192,
              widthOfContainer: 200,
              networkImage:
                  // mealsFuture.strSource
                  'https://h5p.org/sites/default/files/h5p/content/825/images/image-53e9e429bba63.jpg',
              postTitle: 'Chicken Tikka',
            ),
          ),
        ],
      ),
    );
  }
}
