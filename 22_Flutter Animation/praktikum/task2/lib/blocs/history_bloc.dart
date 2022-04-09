import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../history_model.dart';

part 'history_event.dart';
part 'history_state.dart';

class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  HistoryBloc() : super(HistoryInitial()) {
    /// TO STORE CONTACT
    List<HistoryModel> listHistory = [];

    /// FOR ADD
    on<OnAddHistory>((event, emit) {
      listHistory.add(event.history);
      emit(HistoryLoaded(listHistory));
    });

    /// FOR LOADED
    on<OnFetchHistory>((event, emit) async {
      emit(HistoryLoading());

      /// FOR HIDE LOADING
      emit(HistoryLoaded(listHistory));
    });
  }
}
