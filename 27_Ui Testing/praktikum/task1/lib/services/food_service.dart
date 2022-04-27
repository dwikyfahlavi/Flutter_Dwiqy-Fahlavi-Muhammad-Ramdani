import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:task1/models/food_model.dart';

class FoodService {
  final Dio _dio = Dio();

  final String _baseUrl = 'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/';

  Future<List<Food>> fetchAllFoods() async {
    try {
      final response = await _dio.get(_baseUrl + 'foods');
      if (response.statusCode == 200) {
        final foods = foodFromListMap(response.data);
        return foods;
      } else {
        throw Exception('Failed to fetch data!');
      }
    } on DioError catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }
}
