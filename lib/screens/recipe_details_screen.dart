import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/recipeDetailsMealDBModel.dart';
import '../services/ApiServiceRecipeDetails.dart';
import '../widgets/custom_checkbox.dart';
import '../widgets/rating_stars_widget.dart';
import '../widgets/startcooking_section.dart';

class RecipeDetailsScreen extends StatefulWidget {
  RecipeDetailsScreen({super.key});

  @override
  State<RecipeDetailsScreen> createState() => _RecipeDetailsScreenState();
}

class _RecipeDetailsScreenState extends State<RecipeDetailsScreen> {
  late Future<List<RecipeDetailsMeal>> recipeDetailsFuture;

  @override
  void initState() {
    super.initState();
    recipeDetailsFuture = ApiServiceRecipeDetails().fetchRecipeDetails();
  }

  final List<String> itemsName = [
    "Chicken breast",
    "Plain yogurt",
    "Garam masala",
    "Cumin powder",
    "Coriander powder",
    "Tomato puree",
    "Fresh ginger",
    "Vegetable oil",
    "Salt",
  ];

  final List<String> itemsAName = [
    "Chicken breast",
    "Plain yogurt",
    "Garam masala",
    "Cumin powder",
    "Coriander powder",
    "Tomato puree",
    "Fresh ginger",
    "Vegetable oil",
    "Salt",
  ];

  final List<String> itemsQty = [
    "500g",
    "1 cup",
    "1 tsp",
    "1 tsp",
    "1 tsp",
    "1 cup",
    "1 inch",
    "2 tsp",
    "to taste",
  ];

  final List<String> numbersInstructions = ["1", "2", "3", "4", "5", "6", "7"];

  final List<String> titleInstructions = [
    "Cut chicken breast into bite-sized cubes and marinate with yogurt, "
        "half of garam masala, salt, and a "
        "pinch of turmeric for at least 30 minutes",
    "Heat oil in a large pan over medium-high heat. "
        "Add marinated chicken and cook until golden "
        "brown and cooked through, about 8-10 minutes.",
    "Remove chicken from pan and set aside. In the "
        "same pan, add diced onion and cook until "
        "softened, about 5 minutes.",

    "Add minced garlic and ginger, cook for another"
        "minute until fragrant.",
    "Add remaining garam masala, cumin, and"
        "coriander powder. Cook for 30 seconds until"
        "aromatic.",
    "Pour in tomato puree and simmer for 10 minutes,"
        "stirring occasionally, until sauce thickens.",
    "Stir in heavy cream and return chicken to the"
        "nan Simmer for 5 minutes to heat thronah",
  ];

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.black,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(300),
          child: AppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Colors.grey[900],
                ),
              ),
            ),
            actions: [
              CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(CupertinoIcons.heart_fill, color: Colors.pink),
              ),
            ],
            flexibleSpace: FutureBuilder<List<RecipeDetailsMeal>>(
              future: recipeDetailsFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator();
                }

                if (!snapshot.hasData || snapshot.data!.isEmpty) {
                  return Text("No data found");
                }

                final meal = snapshot.data!.first;

                return Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Image.network(
                        meal.strMealThumb ?? "",
                        // fit: BoxFit.cover,
                        width: double.infinity,
                        height: 300,
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Text(meal.strMeal ?? ""),
                    // Image.network(meal.strMealThumb ?? "",
                    //   fit: BoxFit.cover,),
                  ],
                );
              },
            ),
          ),
        ),

        bottomNavigationBar: StartCookingSection(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FutureBuilder<List<RecipeDetailsMeal>>(
                      future: recipeDetailsFuture,
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return CircularProgressIndicator();
                        }

                        if (!snapshot.hasData || snapshot.data!.isEmpty) {
                          return Text("No data found");
                        }

                        final meal = snapshot.data!.first;

                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              meal.strMeal ?? "",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    RatingStarsWidget(starSize: 25),
                                    SizedBox(width: 15),
                                    Text("4.6", style: TextStyle(fontSize: 25)),
                                    SizedBox(width: 15),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 8,
                                        vertical: 4,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.orange,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Text(
                                        "Medium",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      WidgetSpan(
                                        child: Icon(
                                          Icons.access_time_filled,
                                          size: 25,
                                          color: Colors.orange,
                                        ),
                                        alignment: PlaceholderAlignment.middle,
                                      ),
                                      const TextSpan(
                                        text: ' 45m',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        );
                      },
                    ),
                    // Column(
                    //   crossAxisAlignment: CrossAxisAlignment.start,
                    //
                    //   children: [
                    //     Text(
                    //       "Chicken Tikka",
                    //       style: TextStyle(
                    //         color: Colors.white,
                    //         fontWeight: FontWeight.bold,
                    //         fontSize: 34,
                    //       ),
                    //     ),
                    //     Row(
                    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //       children: [
                    //         Row(
                    //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //           children: [
                    //             RatingStarsWidget(starSize: 25),
                    //             SizedBox(width: 15),
                    //             Text("4.6", style: TextStyle(fontSize: 25)),
                    //             SizedBox(width: 15),
                    //             Container(
                    //               padding: const EdgeInsets.symmetric(
                    //                 horizontal: 8,
                    //                 vertical: 4,
                    //               ),
                    //               decoration: BoxDecoration(
                    //                 color: Colors.orange,
                    //                 borderRadius: BorderRadius.circular(20),
                    //               ),
                    //               child: Text(
                    //                 "Medium",
                    //                 style: TextStyle(
                    //                   fontSize: 18,
                    //                   fontWeight: FontWeight.bold,
                    //                 ),
                    //               ),
                    //             ),
                    //           ],
                    //         ),
                    //         RichText(
                    //           text: TextSpan(
                    //             children: [
                    //               WidgetSpan(
                    //                 child: Icon(
                    //                   Icons.access_time_filled,
                    //                   size: 25,
                    //                   color: Colors.orange,
                    //                 ),
                    //                 alignment: PlaceholderAlignment.middle,
                    //               ),
                    //               const TextSpan(
                    //                 text: ' 45m',
                    //                 style: TextStyle(
                    //                   color: Colors.white,
                    //                   fontSize: 20,
                    //                 ),
                    //               ),
                    //             ],
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ],
                    // ),
                  ),
                ),
                Text(
                  "Ingredients",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                  ),
                ),

                FutureBuilder<List<RecipeDetailsMeal>>(
                  future: recipeDetailsFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return CircularProgressIndicator();
                    }

                    if (!snapshot.hasData || snapshot.data!.isEmpty) {
                      return Text("No data found");
                    }

                    final meal = snapshot.data!.first;

                    return Column(
                      children: [
                        Text(
                          meal.strInstructions ?? "",
                          textAlign: TextAlign.start,

                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            // fontSize: 26,
                          ),
                        ),

                        Text(
                          meal.strInstructions ?? "",
                          textAlign: TextAlign.start,

                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            // fontSize: 26,
                          ),
                        ),

                        // ListTile(
                        //   leading: Text(
                        //     numbersInstructions[1],
                        //     textAlign: TextAlign.end,
                        //     style: TextStyle(
                        //       color: Colors.white,
                        //       fontWeight: FontWeight.bold,
                        //       // fontSize: 26,
                        //     ),
                        //   ),
                        //   title: Text(
                        //     meal.strInstructions ?? "",
                        //     style: TextStyle(
                        //       color: Colors.white,
                        //       fontWeight: FontWeight.normal,
                        //       // fontSize: 26,
                        //     ),
                        //   ),
                        // ),
                      ],
                    );
                  },
                ),

                //   Column(
                //   children: [
                //     Text(meal.strIngredient1 ?? ""),
                //     // Image.network(meal.strMealThumb ?? ""),
                //   ],
                // );
                //   },
                // ),
                // FutureBuilder<List<RecipeDetailsMeal>>(
                //   future: recipeDetailsFuture,
                //   builder: (context, snapshot) {
                //     if (!snapshot.hasData) {
                //       return SizedBox(
                //         height: 50,
                //         child: Center(child: CircularProgressIndicator()),
                //       );
                //     }
                //
                //     final RecipeDetails = snapshot.data!;
                //
                //     return Column(
                //       spacing: 5,
                //       children: List.generate(9, (index) {
                //         return CustomCheckbox(
                //           titleOne: RecipeDetails.strMeal,
                //           titleTwo: RecipeDetails.strIngredient1,
                //         );
                //       }),
                //     );
                //   },
                // ),

                // Column(
                //   spacing: 5,
                //   children: [
                //     CustomCheckbox(
                //       titleOne: itemsName[0],
                //       titleTwo: itemsQty[0],
                //     ),
                //     CustomCheckbox(
                //       titleOne: itemsName[1],
                //       titleTwo: itemsQty[1],
                //     ),
                //     CustomCheckbox(
                //       titleOne: itemsName[2],
                //       titleTwo: itemsQty[2],
                //     ),
                //     CustomCheckbox(
                //       titleOne: itemsName[3],
                //       titleTwo: itemsQty[3],
                //     ),
                //     CustomCheckbox(
                //       titleOne: itemsName[4],
                //       titleTwo: itemsQty[4],
                //     ),
                //   ],
                // ),
                Text(
                  "Instructions",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                  ),
                ),
                Column(
                  children: List.generate(7, (index) {
                    return ListTile(
                      leading: Text(
                        numbersInstructions[index],
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          // fontSize: 26,
                        ),
                      ),
                      title: Text(
                        titleInstructions[index],
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          // fontSize: 26,
                        ),
                      ),
                    );
                  }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
