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
  ];

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      // ),
      body: Padding(
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
            Column(spacing: 5,
              children: [
                CustomCheckbox(titleOne: itemsName[0], titleTwo: itemsName[0],),
                CustomCheckbox(titleOne: itemsName[1], titleTwo: itemsName[1],),
                CustomCheckbox(titleOne: itemsName[2], titleTwo: itemsName[2],),
                CustomCheckbox(titleOne: itemsName[3], titleTwo: itemsName[3],),
                CustomCheckbox(titleOne: itemsName[4], titleTwo: itemsName[4],),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

