import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/recipeDetailsMealDBModel.dart';

class ApiServiceRecipeDetails {
  Future<List<RecipeDetailsMeal>> fetchRecipeDetails() async {
    final response = await http.get(
      Uri.parse("https://www.themealdb.com/api/json/v1/1/lookup.php?i=52772"),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      final recipeDetailsDb = RecipeDetailsMealDBModel.fromJson(data);

      return recipeDetailsDb.meals ?? [];
    } else {
      throw Exception("Failed to load meals");
    }
  }
}
