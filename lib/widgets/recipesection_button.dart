import 'package:flutter/material.dart';
import '../screens/home_screen.dart';

class RecipeSectionButton extends StatelessWidget {
  const RecipeSectionButton({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => HomeScreen()),
        );
      },
      icon: Container(
        width: MediaQuery.of(context).size.width * 1,
        height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: Color(0xFF5750D4), width: 3),
          color: Color(0xFF5750D4).withOpacity(0.3),
        ),
        alignment: Alignment.center,
        child: Row(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.add, size: 25, color: Color(0xFF5750D4), weight: 700),
            Text(
              title,
              // "Add Ingredients",
              style: TextStyle(
                fontSize: 20,
                color: Color(0xFF5750D4),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
