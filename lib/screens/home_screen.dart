import 'package:flutter/material.dart';
import 'package:internship_task_cookbook/widgets/popularpost.dart';
import '../models/categoriesMealDBModel.dart';
import '../screens/recipe_details_screen.dart';
import '../services/api_service.dart';
import '../widgets/custom_categorybutton.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/popularpost_section.dart';
import '../widgets/custom_searchbar.dart';
import 'browse_recipes_screen.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({super.key,});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

// List<String> categoryName = ["All", "Breakfast", "Lunch", "Dinner", "Dessert"];

int selectedIndex = 0;

class _HomeScreenState extends State<HomeScreen> {
  late Future<List<Categories>> categoriesFuture;

  @override
  void initState() {
    super.initState();
    categoriesFuture = ApiServiceCategories().fetchCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            spacing: 20,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => BrowseRecipesScreen()),
                  );
                },
                child: CustomSearchBar(),
              ),
              FutureBuilder<List<Categories>>(
                future: categoriesFuture,
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return SizedBox(
                      height: 50,
                      child: Center(child: CircularProgressIndicator()),
                    );
                  }

                  final categories = snapshot.data!;

                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(categories.length, (index) {
                        final isSelected = index == selectedIndex;
                        final category = categories[index];
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          child: CategoryButton(
                            isSelected: isSelected,
                            label: category.strCategory ?? "",
                            // categoryName[index],
                          ),
                        );
                      }),
                    ),
                  );
                },
              ),
              Text(
                "Featured",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => RecipeDetailsScreen()),
                  );
                },
                // child:FeaturedPost(),
                child: FutureBuilder<List<Categories>>(
                  future: categoriesFuture,
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return SizedBox(
                        height: 50,
                        child: Center(child: CircularProgressIndicator()),
                      );
                    }

                    final categories = snapshot.data!;
                    final category = categories[8];

                    return PopularPost(
                      widthOfImage: 200,
                      widthOfContainer: 200,
                      networkImage: category.strCategoryThumb ?? "",
                      postTitle: category.strCategory ?? "",
                    );
                  },
                ),
              ),

              Text(
                "Popular Recipes",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),

              if (selectedIndex == 0)
                PopularPostSection()
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
