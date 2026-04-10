import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/categoriesMealDBModel.dart';

class ApiServiceCategories {
  Future<List<Categories>> fetchCategories() async {
    final response = await http.get(
      Uri.parse("https://www.themealdb.com/api/json/v1/1/categories.php"),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      final categoriesDb = CategoriesMealDBModel.fromJson(data);

      return categoriesDb.categories ?? [];
    } else {
      throw Exception("Failed to load meals");
    }
  }
}