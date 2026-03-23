import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_checkbox.dart';

class RecipeDetailsScreen extends StatefulWidget {
  RecipeDetailsScreen({super.key});

  @override
  State<RecipeDetailsScreen> createState() => _RecipeDetailsScreenState();
}

class _RecipeDetailsScreenState extends State<RecipeDetailsScreen> {
  // final List<Map<String, dynamic>> items = [
  //   {"name": "Chicken breast", "qty": "500g", "checked": true},
  //   {"name": "Plain yogurt", "qty": "1 cup", "checked": true},
  //   {"name": "Garam masala", "qty": "1 tsp", "checked": true},
  //   {"name": "Cumin powder", "qty": "1 tsp", "checked": false},
  //   {"name": "Coriander powder", "qty": "1 tsp", "checked": false},
  //   {"name": "Tomato puree", "qty": "—", "checked": false},
  // ];

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

  final List<String> itemsQyt = [
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

  // Start Cooking
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
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
            flexibleSpace: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://h5p.org/sites/default/files/h5p/content/825/images/image-53e9e429bba63.jpg",
                  ),
                  opacity: 0.6,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),

        // body: ListView.builder(
        //   itemCount: items.length,
        //   itemBuilder: (context, index) {
        //     final item = items[index];
        //     return Transform.scale(
        //       scale: 1.3, // make the checkbox bigger/thicker
        //
        //       child: CheckboxListTile(
        //         value: item["checked"],
        //         onChanged: (bool? value) {
        //           setState(() {
        //             item["checked"] = value ?? false;
        //           });
        //         },
        //         title: Text(
        //           item["name"],
        //           style: TextStyle(
        //             color: Colors.red,
        //
        //             fontSize: 18,
        //             decoration: item["checked"]
        //                 ? TextDecoration.lineThrough
        //                 : TextDecoration.none,
        //           ),
        //         ),
        //         subtitle: Text(item["qty"],style: TextStyle(color: Colors.red,),),
        //         activeColor: Colors.purple, // checkbox background when checked
        //         checkColor: Colors.white,   // checkmark color
        //         controlAffinity: ListTileControlAffinity.leading, // checkbox on the left
        //         contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        //       ),
        //     );
        //   },
        // ),.
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text(
                          "Chicken Tikka",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 34,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.star, color: Colors.amber, size: 25),
                                Icon(Icons.star, color: Colors.amber, size: 25),
                                Icon(Icons.star, color: Colors.amber, size: 25),
                                Icon(Icons.star, color: Colors.amber, size: 25),
                                Icon(
                                  Icons.star_border,
                                  color: Colors.amber,
                                  size: 25,
                                ),
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
                    ),
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
                Column(
                  spacing: 5,
                  children: [
                    CustomCheckbox(
                      titleOne: itemsName[0],
                      titleTwo: itemsQyt[0],
                    ),
                    CustomCheckbox(
                      titleOne: itemsName[1],
                      titleTwo: itemsQyt[1],
                    ),
                    CustomCheckbox(
                      titleOne: itemsName[2],
                      titleTwo: itemsQyt[2],
                    ),
                    CustomCheckbox(
                      titleOne: itemsName[3],
                      titleTwo: itemsQyt[3],
                    ),
                    CustomCheckbox(
                      titleOne: itemsName[4],
                      titleTwo: itemsQyt[4],
                    ),
                  ],
                ),
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

class StartCookingSection extends StatelessWidget {
  const StartCookingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 10,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.77,
          height: 70,
          decoration: BoxDecoration(
            color: Color(0xFF5750D4),
            borderRadius: BorderRadius.circular(18),
          ),
          alignment: Alignment.center,
          child: RichText(
            text: TextSpan(
              children: [
                WidgetSpan(
                  child: Icon(
                    Icons.local_fire_department_rounded,
                    size: 35,
                    // color: Colors.orange,
                  ),
                  alignment: PlaceholderAlignment.middle,
                ),
                const TextSpan(
                  text: ' Start Cooking',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.2,
          height: 70,
          decoration: BoxDecoration(
            // color: Color(0xFF5750D4),
            borderRadius: BorderRadius.circular(18),
            border: Border.all(color: Color(0xFF5750D4), width: 3),
          ),
          alignment: Alignment.center,
          child: Icon(Icons.edit),
        ),
      ],
    );
  }
}
