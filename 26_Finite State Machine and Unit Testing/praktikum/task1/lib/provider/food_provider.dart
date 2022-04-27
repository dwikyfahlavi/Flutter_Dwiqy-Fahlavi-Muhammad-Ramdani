import 'package:flutter/foundation.dart';
import 'package:task1/models/api/service.dart';
import 'package:task1/models/food_model.dart';

enum FoodProviderState { none, loading, error }

class FoodProvider extends ChangeNotifier {
  FoodProviderState _state = FoodProviderState.none;
  FoodProviderState get state => _state;

  List<Food> _foods = [];
  List<Food> get foods => _foods;

  final ApiService service = ApiService();

  changeState(FoodProviderState state) {
    _state = state;
    notifyListeners();
  }

  fetchAllContacts() async {
    changeState(FoodProviderState.loading);

    try {
      final result = await service.fetchAllFoods();
      _foods = result;
      notifyListeners();

      changeState(FoodProviderState.none);
    } catch (e) {
      changeState(FoodProviderState.error);
    }
  }
}
