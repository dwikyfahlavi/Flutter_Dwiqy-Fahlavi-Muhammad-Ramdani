import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:task1/models/contact_model.dart';
import 'package:task1/models/food_model.dart';

class ApiService {
  final Dio _dio = Dio();

  final String _baseUrl = 'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/';

  Future<List<ContactModel>> fetchAllContacts() async {
    try {
      final response = await _dio.get(_baseUrl + 'contacts');

      if (response.statusCode == 200) {
        final contacts = contactModelFromListMap(response.data);
        return contacts;
      } else {
        throw Exception('Failed to fetch data!');
      }
    } on DioError catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  Future<ContactModel> addContact(ContactModel contact) async {
    final data = ContactModel.toMap(contact);
    try {
      final response = await _dio.post(_baseUrl + 'contacts', data: data);

      if (response.statusCode == 201) {
        final contact = ContactModel.fromMap(response.data);
        return contact;
      } else {
        throw Exception('Failed to create contact!');
      }
    } on DioError catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

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
