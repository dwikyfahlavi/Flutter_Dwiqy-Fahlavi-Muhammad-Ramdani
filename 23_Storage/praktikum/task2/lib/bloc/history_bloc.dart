import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:task2/models/history.dart';

part 'history_event.dart';
part 'history_state.dart';

class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  HistoryBloc() : super(const HistoryInit(listHistory: [])) {
    on<AddHistory>((event, emit) {
      var state = this.state;
      if (state is HistoryInit) {
        List<History> newList = [event.history, ...state.listHistory];
        emit(HistoryInit(listHistory: newList));
      }
    });
  }
}
