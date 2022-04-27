import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:task1/models/api/service.dart';
import 'package:task1/models/food_model.dart';

part 'food_event.dart';
part 'food_state.dart';

class FoodBloc extends Bloc<FoodEvent, FoodState> {
  FoodBloc() : super(LoadingState()) {
    final ApiService service = ApiService();

    on<FetctAllFoods>((event, emit) async {
      try {
        emit(LoadingState());

        ///Fetch data foods
        final List<Food> result = await service.fetchAllFoods();

        print(result);

        emit(SuccessState(foods: result));
      } catch (e) {
        emit(ErrorState(e.toString()));
      }
    });
  }
}
