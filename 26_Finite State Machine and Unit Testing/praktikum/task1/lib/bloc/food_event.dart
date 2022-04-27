part of 'food_bloc.dart';

abstract class FoodEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class FetctAllFoods extends FoodEvent {}
