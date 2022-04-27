part of 'food_bloc.dart';

abstract class FoodState extends Equatable {
  const FoodState();

  @override
  List<Object?> get props => [];
}

class LoadingState extends FoodState {}

class SuccessState extends FoodState {
  final List<Food> foods;

  const SuccessState({required this.foods});

  @override
  List<Object?> get props => [foods];
}

class ErrorState extends FoodState {
  final String message;

  const ErrorState(this.message);
}
