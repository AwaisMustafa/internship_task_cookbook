import 'package:flutter/material.dart';

class CustomCheckbox extends StatefulWidget {
  const CustomCheckbox({
    super.key,
    required this.titleOne,
    required this.titleTwo,
  });

  final String titleOne;
  final String titleTwo;

  @override
  State<CustomCheckbox> createState() => _CustomCheckboxState();
}

bool isChecked = false;

class _CustomCheckboxState extends State<CustomCheckbox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.2),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Chicken breast
            // 500g
            //
            // Plain yogurt
            // 1 cup
            //
            // Garam masala
            // 1 tsp
            //
            // Cumin powder
            // 1 tsp
            //
            // Coriander powder
            // 1 tsp
            //
            // Tamata nuıraa
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value ?? false;
                    });
                  },
                  activeColor: Colors.purple, // checkbox fill color
                  checkColor: Colors.white, // tick color
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //   Text(item["qty"]),
                    Text(
                      // item["name"],
                widget.titleOne,
                      // "Chicken breast",

                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        decoration: isChecked
                            ? TextDecoration.lineThrough
                            : null,
                      ),
                    ),
                    Align(
                      alignment: AlignmentGeometry.topStart,
                      child: Text(
                        // "500g",
                        widget.titleTwo,
                        style: TextStyle(
                          color: Colors.white,
                          decoration: isChecked
                              ? TextDecoration.lineThrough
                              : null,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            // Input field
            // Padding(
            //   padding: const EdgeInsets.all(12),
            //   child: Row(
            //     children: [
            //       Expanded(
            //         child: TextField(
            //           // controller: controller,
            //           decoration: InputDecoration(
            //             hintText: "Enter task...",
            //             border: OutlineInputBorder(),
            //           ),
            //         ),
            //       ),
            //       SizedBox(width: 10),
            //       ElevatedButton(
            //         // onPressed: addTask,
            //         onPressed: () {},
            //         child: Text("Add"),
            //       ),
            //     ],
            //   ),
            // ),
            // ListView.builder(
            //   itemCount: items.length,
            //   itemBuilder: (context, index) {
            //     final item = items[index];
            //     return CheckboxListTile(
            //       value: item["checked"],
            //       onChanged: (bool? value) {
            //         setState(() {
            //           item["checked"] = value ?? false;
            //         });
            //       },
            //       title: Text(
            //         item["name"],
            //         style: TextStyle(
            //           decoration: item["checked"]
            //               ? TextDecoration.lineThrough
            //               : TextDecoration.none,
            //         ),
            //       ),
            //       subtitle: Text(item["qty"]),
            //       activeColor: Colors.purple,
            //       checkColor: Colors.white,
            //     );
            //   },
            // ),
            // ListView.builder(
            //   itemCount: items.length,
            //   itemBuilder: (context, index) {
            //     final item = items[index];
            //     return Transform.scale(
            //       scale: 1.3, // make the checkbox bigger/thicker
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
            //             fontSize: 18,
            //             decoration: item["checked"]
            //                 ? TextDecoration.lineThrough
            //                 : TextDecoration.none,
            //           ),
            //         ),
            //         subtitle: Text(item["qty"]),
            //         activeColor: Colors.purple, // checkbox background when checked
            //         checkColor: Colors.white,   // checkmark color
            //         controlAffinity: ListTileControlAffinity.leading, // checkbox on the left
            //         contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            //       ),
            //     );
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
