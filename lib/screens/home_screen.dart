import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/featuredpost.dart';
import '../widgets/popularpost.dart';
import '../widgets/custom_searchbar.dart';

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
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            spacing: 20,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomSearchBar(),
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
                      child: CategoryButton(
                        isSelected: isSelected,
                        label: categoryName[index],
                      ),
                    );
                  }),
                ),
              ),
              Text(
                "Featured",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              FeaturedPost(),
              Text(
                "Popular Recipes",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),

              if (selectedIndex == 0)
                PopularPost()
              else
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.search, size: 100, color: Colors.grey[800]),
                      Text(
                        "No recipes found ",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Try adjusting your search or category filter",
                        style: TextStyle(fontSize: 15, color: Colors.grey[800]),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
