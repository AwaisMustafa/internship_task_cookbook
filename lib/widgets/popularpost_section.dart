import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/searchMealDBModel.dart';
import '../services/api_service.dart';
import 'popularpost.dart';

// class PopularPostSection extends StatefulWidget {
//   const PopularPostSection({super.key});
//
//   @override
//   State<PopularPostSection> createState() => _PopularPostSectionState();
// }
//
// class _PopularPostSectionState extends State<PopularPostSection> {
//   late Future<List<MealDbapi>> mealsFuture;
//
//
// @override
// void initState() {
//   super.initState();
//   var mealsFuture = ApiService().searchMeals("beef");
// }
//
//
//   @override
//   Widget build(BuildContext context) {
//
//     return
//       FutureBuilder<List<MealDbapi>>(
//           future: ApiService().searchMeals("beef"),
//           builder: (context, snapshot) {
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return const Center(child: CircularProgressIndicator());
//             } else if (snapshot.hasError) {
//               return Center(child: Text("Error: ${snapshot.error}"));
//             } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
//               return const Center(child: Text("No meals found"));
//             }
//
//             final meals = snapshot.data!;
//             return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: Row(
//         children: List.generate(2, (index) {
//           return Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: PopularPost(
//               widthOfImage: 192,
//               widthOfContainer: 200,
//               networkImage:
//                   // mealsFuture.strSource
//                   'https://h5p.org/sites/default/files/h5p/content/825/images/image-53e9e429bba63.jpg',
//               postTitle: meal.strMealThumb,
//             ),
//           );
//         }),
//       ),
//     );
//
//       },
//   );
// }
// }

class PopularPostSection extends StatefulWidget {
  const PopularPostSection({super.key});

  @override
  State<PopularPostSection> createState() => _PopularPostSectionState();
}

class _PopularPostSectionState extends State<PopularPostSection> {
  // late Future<List<MealDbapi>> mealsFuture;

  late Future<List<Meals>> mealsFuture;
  @override
  void initState() {
    super.initState();
    // mealsFuture = ApiService().searchMeals("beef");
    mealsFuture = ApiServiceSearch().fetchMeals("chicken");
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Meals>>(
      future: mealsFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text("Error: ${snapshot.error}"));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Center(child: Text("No meals found"));
        }

        final meals = snapshot.data!;

        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(meals.length, (index) {
              final meal = meals[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: PopularPost(
                  widthOfImage: 192,
                  widthOfContainer: 200,
                  networkImage: meal.strMealThumb ?? "",
                  postTitle: meal.strMeal ?? "",
                ),
              );
            }),
          ),
        );
      },
    );
  }
}
