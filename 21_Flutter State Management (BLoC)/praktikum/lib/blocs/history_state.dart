part of 'history_bloc.dart';

@immutable
abstract class HistoryState {}

class HistoryInitial extends HistoryState {}

class HistoryLoading extends HistoryState {}

class HistoryLoaded extends HistoryState {
  final List<HistoryModel> history;
  HistoryLoaded(this.history);
}

class HistoryLoadingFailed extends HistoryState {
  final String message;
  HistoryLoadingFailed(this.message);
}
