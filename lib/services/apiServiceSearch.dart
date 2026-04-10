import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/searchMealDBModel.dart';

class ApiServiceSearch {
  Future<List<Meals>> fetchMeals(String query) async {
    final response = await http.get(
      Uri.parse("https://www.themealdb.com/api/json/v1/1/search.php?s=$query"),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      final mealDb = SearchMealModel.fromJson(data);

      return mealDb.meals ?? [];
    } else {
      throw Exception("Failed to load meals");
    }
  }
}