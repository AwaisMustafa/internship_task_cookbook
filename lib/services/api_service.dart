import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/categoriesMealDBModel.dart';
import '../models/searchMealDBModel.dart';

// class ApiService {
//   Future<List<dynamic>> fetchMeals(String query) async {
//     final response = await http.get(
//       Uri.parse(" www.themealdb.com/api/json/v1/1/search.php?s=beef"),
//     );
//
//     if (response.statusCode == 200) {
//       final data = jsonDecode(response.body);
//       return data['meals'] ?? [];
//     } else {
//       throw Exception("Failed to load meals");
//     }
//   }
// }

// class ApiService {
//   static const String baseUrl = "https://www.themealdb.com/api/json/v1/1";
//
//   Future<List<MealDbapi>> searchMeals(String query) async {
//     final response = await http.get(Uri.parse("$baseUrl/search.php?s=$query"));
//
//     if (response.statusCode == 200) {
//       final data = jsonDecode(response.body);
//       final List meals = data['meals'];
//
//       return meals.map((mealJson) => MealDbapi.fromJson(mealJson)).toList();
//     } else {
//       throw Exception("Failed to load meals");
//     }
//   }
// }

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

class ApiServiceCategories {
  Future<List<Categories>> fetchCategories() async {
    final response = await http.get(
      Uri.parse("https://www.themealdb.com/api/json/v1/1/categories.php"),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      final CategoriesDb = CategoriesMealDBModel.fromJson(data);

      return CategoriesDb.categories ?? [];
    } else {
      throw Exception("Failed to load meals");
    }
  }
}
