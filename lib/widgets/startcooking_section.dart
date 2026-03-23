import 'package:flutter/material.dart';
import '../screens/add_recipe_screen.dart';

class StartCookingSection extends StatelessWidget {
  const StartCookingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.75,
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

        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => AddRecipeScreen()),
            );
          },
          icon: Container(
            width: MediaQuery.of(context).size.width * 0.2,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: Color(0xFF5750D4), width: 3),
            ),
            alignment: Alignment.center,
            child: Icon(Icons.edit),
          ),
        ),
      ],
    );
  }
}
