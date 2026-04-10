import 'package:flutter/material.dart';
import '../widgets/custom_textfield.dart';
import '../widgets/recipesection_button.dart';

class AddRecipeScreen extends StatelessWidget {
  const AddRecipeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.black,
        appBar: AppBar(
          foregroundColor: Colors.white,
          centerTitle: true,
          backgroundColor: Colors.grey[800],
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Text(
              "Back",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colors.grey[400],
              ),
            ),
          ),
          title: Text(
            "Settings",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: Text(
                "Save",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: Colors.grey[400],
                ),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Recipe Title *",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                // Container(
                //   width: double.infinity,
                //   height: 50,
                //   decoration: BoxDecoration(
                //     color: Colors.grey[800],
                //     borderRadius: BorderRadius.circular(18),
                //   ),
                //   child: Padding(
                //     padding: const EdgeInsets.all(10),
                //     child: Text("Search recipes..."),
                //   ),
                // ),
                CustomTextField(title: 'G'),
                Text(
                  "Category",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Snack",
                    hintStyle: TextStyle(color: Colors.white, fontSize: 18),
                    filled: true,
                    fillColor: Colors.grey[800],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: BorderSide(color: Colors.grey, width: 2),
                    ),
                    suffixIcon: Icon(
                      Icons.keyboard_arrow_down_outlined,
                      color: Colors.grey[400],
                      size: 30,
                    ),
                  ),
                ),
                Text(
                  "Cook Time (minutes) *",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                CustomTextField(title: '30'),
                Text(
                  "Difficulty",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Row(
                  spacing: 10,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey[600],
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Center(
                        child: Text(
                          "Easy",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey[600],
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Center(
                        child: Text(
                          "Medium",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xFF5750D4),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Center(
                        child: Text(
                          "Hard",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  "Image URL (optional)",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                CustomTextField(title: 'http://example.com/image.png'),
                Text(
                  "Rating ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                CustomTextField(title: '5 Star ----- 1 Star'),
                Text(
                  "Ingredients ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Row(
                  spacing: 5,
                  children: [
                    Expanded(
                      flex: 3,
                      child: CustomTextField(title: 'Ingredients name'),
                    ),
                    Expanded(flex: 2, child: CustomTextField(title: 'Qty')),
                    Icon(Icons.delete),
                  ],
                ),
                RecipeSectionButton(title: 'Add Ingredients'),
                Text(
                  "Cooking Steps * ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Row(
                  spacing: 5,
                  children: [
                    Expanded(
                      flex: 1,
                      child: CircleAvatar(
                        backgroundColor: Color(0xFF5750D4),
                        child: Text("1", style: TextStyle(color: Colors.white)),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: CustomTextField(title: 'Describe this step...'),
                    ),
                    Icon(Icons.delete),
                  ],
                ),
                RecipeSectionButton(title: 'Add Step'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
